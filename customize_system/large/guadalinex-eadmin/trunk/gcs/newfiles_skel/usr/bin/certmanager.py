#!/usr/bin/env python
#-*- coding: utf8 -*-

#Módulo certmanager- Módulo que localiza certificados digitales en dispositivos
# de volumen y que configura un conjunto de aplicaciones para que funcionen
# correctamente
#
#Copyright (C) 2005 Junta de Andalucía
#
#Autor/es (Author/s):
#
#- Lorenzo Gil Sanchez <lgs@yaco.es>
#
#Este fichero es parte del módulo E-Admin de Guadalinex 2006
#
#E-Admin de Guadalinex 2006 es software libre. Puede redistribuirlo y/o modificarlo
#bajo los términos de la Licencia Pública General de GNU según es
#publicada por la Free Software Foundation, bien de la versión 2 de dicha
#Licencia o bien (según su elección) de cualquier versión posterior.
#
#Detección de Hardware de Guadalinex 2005  se distribuye con la esperanza de que sea útil,
#pero SIN NINGUNA GARANTÍA, incluso sin la garantía MERCANTIL
#implícita o sin garantizar la CONVENIENCIA PARA UN PROPÓSITO
#PARTICULAR. Véase la Licencia Pública General de GNU para más detalles.
#
#Debería haber recibido una copia de la Licencia Pública General
#junto con Detección de Hardware de Guadalinex 2005 . Si no ha sido así, escriba a la Free Software
#Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA.
#
#-------------------------------------------------------------------------
#
#This file is part of E-Admin de Guadalinex 2006 .
#
#E-Admin de Guadalinex 2006  is free software; you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation; either version 2 of the License, or
#at your option) any later version.
#
#E-Admin Guadalinex 2006  is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with Foobar; if not, write to the Free Software
#Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

import commands
import glob
import optparse
import os
import subprocess
import tempfile

import gobject
import gtk

FIREFOX_CMD  = '/usr/bin/firefox'
CERTUTIL_CMD = '/usr/bin/certutil'
MODUTIL_CMD  = '/usr/bin/modutil'
PK12UTIL_CMD = '/usr/bin/pk12util'

class FireFoxSecurityUtils(object):
    def is_firefox_running(self):
        cmd = '%s -remote "ping()"' % FIREFOX_CMD
        status, output = commands.getstatusoutput(cmd)
        return status == 0

    def create_default_profile(self):
        cmd = '%s -CreateProfile "default"'
        status, output = commands.getstatusoutput(cmd)
        return status == 0

    def get_default_profile_dir(self):
        user_dir = os.path.expanduser('~')
        ff_dir = os.path.join(user_dir, '.mozilla', 'firefox')
        for name in os.listdir(ff_dir):
            full_name = os.path.join(ff_dir, name)
            if os.path.isdir(full_name) and name.endswith('.default'):
                return full_name

    def has_security_method(self, security_method):
        profile = self.get_default_profile_dir()
        if not profile:
            return False

        cmd = '%s -list -dbdir "%s"' % (MODUTIL_CMD, profile)
        status, output = commands.getstatusoutput(cmd)
        return security_method in output

    def add_security_method(self, name, library, mechanisms="FRIENDLY"):
        profile = self.get_default_profile_dir()
        if not profile:
            return False

        # we need to use the subprocess module since this command request
        # interactive input
        cmd = [MODUTIL_CMD, '-add', "%s" % name, '-libfile', library,
               '-mechanisms', "%s" % mechanisms, '-dbdir', "%s" % profile]
        process = subprocess.Popen(cmd,
                                   stdin=subprocess.PIPE,
                                   stdout=subprocess.PIPE,
                                   stderr=subprocess.PIPE)
        process.stdin.write('\n')
        process.wait()
        return process.returncode == 0

    def has_root_ca_certificate(self, ca_name):
        profile = self.get_default_profile_dir()
        if not profile:
            return False

        cmd = '%s -L -n "%s" -d "%s"' % (CERTUTIL_CMD, ca_name, profile)
        status, output = commands.getstatusoutput(cmd)
        return status == 0

    def add_root_ca_certificate(self, ca_name, certificate_file):
        profile = self.get_default_profile_dir()
        if not profile:
            return False

        if self.has_root_ca_certificate(ca_name):
            return False

        cmd = '%s -A -a -d "%s" -i %s -n "%s" -t "TCu,Cu,Cu"'
        cmd = cmd % (CERTUTIL_CMD, profile, certificate_file, ca_name)
        status, output = commands.getstatusoutput(cmd)
        return status == 0

    def add_user_certificate(self, certificate_file, password):
        profile = self.get_default_profile_dir()
        if not profile:
            return False

        fd, password_file = tempfile.mkstemp(text=True)
        os.write(fd, password)
        os.close(fd)
        cmd = '%s -i "%s" -d "%s" -w "%s"'
        cmd = cmd % (PK12UTIL_CMD, certificate_file, profile, password_file)
        status, output = commands.getstatusoutput(cmd)
        os.unlink(password_file)
        return status == 0

DNIE_ROOT_CERT_NAME = "AC RAIZ DNIE - DIRECCION GENERAL DE LA POLICIA"
DNIE_ROOT_CERT_FILE = "/usr/share/opensc-dnie/ac_raiz_dnie.crt"
FNMT_ROOT_CERT_NAME = "FNMT"
FNMT_ROOT_CERT_FILE = "/usr/share/ca-certificates/fnmt/FNMTClase2CA.crt"
DNIE_PKCS11_LIB     = "/usr/lib/opensc-pkcs11.so"

class Application(object):
    """Base abstract class Application that can use a certificate"""

    def __init__(self, name):
        self._name = name

    def setup(self, user_certificates=[], install_dnie=False):
        """This method should be overriden in subclasses"""

    def _wait_for_running_instances(self):
        dialog = gtk.MessageDialog(None, 0, gtk.MESSAGE_INFO,
                                   gtk.BUTTONS_NONE)
        next_btn = dialog.add_button(gtk.STOCK_GO_FORWARD, gtk.RESPONSE_ACCEPT)
        next_btn.set_sensitive(False)
        dialog.add_button(gtk.STOCK_CANCEL, gtk.RESPONSE_CANCEL)
        dialog.set_title('Configurando %s' % self._name)
        dialog.set_position(gtk.WIN_POS_CENTER)
        dialog.set_markup('Debe cerrar todas las ventanas de %s para configurar los certificados digitales' % self._name)
        progress = gtk.ProgressBar()
        progress.set_text('Esperando a que finalice %s' % self._name)
        progress.set_pulse_step(0.1)
        progress.pulse()
        dialog.vbox.pack_start(progress, False, False)
        dialog.show_all()
        gobject.timeout_add(300, self._check_app_running, progress, next_btn)
        result = dialog.run()
        dialog.destroy()
        return result == gtk.RESPONSE_ACCEPT

    def _check_app_running(self, progress, next_btn):
        retval = self._is_app_running()
        if retval:
            progress.pulse()
        else:
            progress.set_text('%s ha finalizado' % self._name)
            progress.set_fraction(1.0)
            next_btn.set_sensitive(True)

        return retval

    def _is_app_running(self):
        """Subclasses should override this True/False method"""

class FireFoxApp(Application):

    def __init__(self, name='FireFox'):
        super(FireFoxApp, self).__init__(name)
        self._ff = FireFoxSecurityUtils()

    def _is_app_running(self):
        return self._ff.is_firefox_running()

    def setup(self, user_certificates=[], install_dnie=False):
        # check that we have the root certificates of relevant spanish agencies
        has_fnmt_cert = self._ff.has_root_ca_certificate(FNMT_ROOT_CERT_NAME)
        has_dnie_cert = self._ff.has_root_ca_certificate(DNIE_ROOT_CERT_NAME)

        if self._ff.get_default_profile_dir() is None:
            self._ff.create_default_profile()

        if ((not has_fnmt_cert and user_certificates) or
            (not has_dnie_cert and install_dnie)):
            # install the root certificates stopping Firefox if needed

            if self._is_app_running():
                abort = not self._wait_for_running_instances()
                if abort:
                    return

            if not has_fnmt_cert and user_certificates:
                self._ff.add_root_ca_certificate(FNMT_ROOT_CERT_NAME,
                                                 FNMT_ROOT_CERT_FILE)

            if not has_dnie_cert and install_dnie:
                self._ff.add_root_ca_certificate(DNIE_ROOT_CERT_NAME,
                                                 DNIE_ROOT_CERT_FILE)

        if self._ff.is_firefox_running():
            abort = not self._wait_for_running_instances()
            if abort:
                return

        if install_dnie and not self._ff.has_security_method('DNIe'):
            self._ff.add_security_method('DNIe', DNIE_PKCS11_LIB)

        # install the user certificates
        for cert in user_certificates:
            self._install_certificate(cert)

    def _install_certificate(self, certificate):
        attempts = 0
        valid = False
        print_warning = False
        while attempts < 3 and not valid:
            password = self._ask_for_password(certificate, print_warning)
            if password:
                valid = self._ff.add_user_certificate(certificate, password)
                attempts += 1
                print_warning = True
            else:
                return # User cancel

        if not valid:
            msg = 'No fue posible agregar el certificado %s porque la contraseña no es válida' % certificate
            dialog = gtk.MessageDialog(None, 0, gtk.MESSAGE_ERROR,
                                       gtk.BUTTONS_CLOSE, msg)
            dialog.set_title('Error configurando %s' % self._name)
            dialog.set_position(gtk.WIN_POS_CENTER)
            dialog.run()
            dialog.destroy()

    def _ask_for_password(self, certificate, warn_user=False):
        dialog = gtk.MessageDialog(None, 0, gtk.MESSAGE_INFO,
                                   gtk.BUTTONS_OK_CANCEL)
        dialog.set_title('Configurando %s' % self._name)
        dialog.set_position(gtk.WIN_POS_CENTER)
        dialog.set_default_response(gtk.RESPONSE_OK)
        dialog.set_markup('Introduzca la contraseña para desbloquear el certificado situado en el fichero <b>%s</b>' % certificate)
        if warn_user:
            dialog.format_secondary_text('La contraseña anterior no es válida')
        entry = gtk.Entry()
        entry.set_activates_default(True)
        entry.set_visibility(False) # this entry is for passwords
        entry.show()
        parent = dialog.vbox.get_children()[0].get_children()[1]
        parent.pack_start(entry, False, False)
        result = dialog.run()
        retval = None
        if result == gtk.RESPONSE_OK:
            retval = entry.get_text()
        dialog.destroy()
        return retval

class EvolutionApp(Application):
    """Firefox should be configured since Evolution depends on its security
    database for apropiate working"""

    def __init__(self, name='Evolution'):
        super(EvolutionApp, self).__init__(name)
        self._ff = FireFoxSecurityUtils()
        self._evo_dir = os.path.join(os.path.expanduser('~'), '.evolution')

    def _is_app_running(self):
        cmd = '/bin/ps -C evolution -o pid='
        status, output = commands.getstatusoutput(cmd)
        return status == 0

    def setup(self, user_certificates=[], install_dnie=False):
        """Link Evolution database to Firefox database"""

        if self._is_app_running():
            abort = not self._wait_for_running_instances()
            if abort:
                return

        if self._ff.get_default_profile_dir() is None:
            self._ff.create_default_profile()

        ff_profile_dir = self._ff.get_default_profile_dir()

        if not os.path.exists(self._evo_dir):
            # We can create the evo dir and next time Evolution is executed
            # it will use such directory and add its own files
            os.mkdir(self._evo_dir)
        else:
            self._backup_evo_database()

        self._create_links(ff_profile_dir)

    def _backup_evo_database(self):
        for filename in ('cert8.db', 'key3.db', 'secmod.db'):
            src = os.path.join(self._evo_dir, filename)
            dst = src + '.org'
            os.rename(src, dst)

    def _create_links(self, ff_profile_dir):
        for filename in ('cert8.db', 'key3.db', 'secmod.db'):
            src = os.path.join(ff_profile_dir, filename)
            dst = os.path.join(self._evo_dir, filename)
            os.symlink(src, dst)

class CertManager(object):
    """Search for certificates in a specific path and configure applications
    to use the certificates that the user selects
    """

    # We serch for certificate files with this extensions
    known_extensions = ('cert', 'p12')

    def __init__(self, applications=[]):
        self._applications = applications

    def run(self, options):
        certs = []
        if options.search_path is not None:
            cert_list = self.search_certificates(options.search_path)

            if cert_list:
                certs = self.select_certificates(cert_list,
                                                 options.search_path)

        if options.install_dnie or certs:
            for app in self._applications:
                app.setup(certs, options.install_dnie)

            # Finish message
            if options.install_dnie and certs:
                what = 'el DNIe y los certificados de usuario'
            elif options.install_dnie:
                what = 'el DNIe'
            else:
                what = 'los certificados de usuario'
            msg = 'La instalacion de %s ha finalizado correctamente' % what
            dialog = gtk.MessageDialog(None, 0, gtk.MESSAGE_INFO,
                                       gtk.BUTTONS_OK, msg)
            dialog.set_position(gtk.WIN_POS_CENTER)
            dialog.run()
            dialog.destroy()

    def search_certificates(self, search_path):
        ret = []
        for extension in self.known_extensions:
            path = os.path.join(search_path, '*.%s' % extension)
            ret += glob.glob(path)

        return ret

    def select_certificates(self, cert_list, search_path):
        dialog = CertificatesDialog(search_path, cert_list)
        ret = []

        if gtk.RESPONSE_ACCEPT == dialog.run():
            ret = dialog.get_selected_certificates()
        dialog.destroy()

        return ret

class CertificatesDialog(gtk.Dialog):
    """Dialog to ask the user which certicicates he/she wishes to use"""
    def __init__(self, path, cert_list, parent=None):
        gtk.Dialog.__init__(self,
                            title="CertManager",
                            parent=parent,
                            flags=gtk.DIALOG_NO_SEPARATOR | gtk.DIALOG_MODAL,
                            buttons=(gtk.STOCK_CANCEL, gtk.RESPONSE_REJECT,
                                     gtk.STOCK_OK, gtk.RESPONSE_ACCEPT))
        self.set_position(gtk.WIN_POS_CENTER)
        self.set_border_width(12)

        hbox = gtk.HBox()
        image = gtk.image_new_from_stock(gtk.STOCK_DIALOG_INFO,
                                         gtk.ICON_SIZE_DIALOG)
        image.set_alignment(0.0, 0.0)

        image.show()
        hbox.pack_start(image, False, False)

        vbox = gtk.VBox(spacing=6)

        # Information label
        info = 'Se han encontrado los siguientes\n certificados en %s' % path
        markup = '<span size="large" weight="bold">%s</span>' % info
        label = gtk.Label(markup)
        label.set_use_markup(True)
        label.set_alignment(0.0, 0.5)
        label.show()
        vbox.pack_start(label, False, False)

        # List with certicates
        model = gtk.ListStore(bool, str)
        for cer in cert_list:
            model.append((True, cer))

        self.treeview = gtk.TreeView(model)
        self.treeview.set_headers_visible(False)
        self.treeview.set_rules_hint(True)
        self.treeview.get_selection().set_mode(gtk.SELECTION_NONE)

        toggle_renderer = gtk.CellRendererToggle()
        toggle_renderer.connect('toggled', self._on_cert__toggled)
        column1 = gtk.TreeViewColumn('', toggle_renderer, active=0)
        self.treeview.append_column(column1)

        text_renderer = gtk.CellRendererText()
        column2 = gtk.TreeViewColumn('', text_renderer, text=1)
        self.treeview.append_column(column2)

        self.treeview.show()

        scrolled_window = gtk.ScrolledWindow()
        scrolled_window.add(self.treeview)
        scrolled_window.set_policy(gtk.POLICY_AUTOMATIC, gtk.POLICY_AUTOMATIC)
        scrolled_window.set_shadow_type(gtk.SHADOW_IN)
        scrolled_window.show()
        vbox.pack_start(scrolled_window, True, True)

        # Request label
        request = 'Seleccione aquellos certificados que desee utilizar'
        label = gtk.Label(request)
        label.set_alignment(0.0, 0.5)
        label.show()
        vbox.pack_start(label, False, False)

        vbox.show()
        hbox.pack_start(vbox, True, True)

        hbox.show()
        self.vbox.pack_start(hbox, True, True)

    def _on_cert__toggled(self, renderer, path):
        model = self.treeview.get_model()
        tree_iter = model.get_iter(path)
        oldvalue = model.get_value(tree_iter, 0)
        model.set_value(tree_iter, 0, not oldvalue)

    def get_selected_certificates(self):
        model = self.treeview.get_model()
        ret = []
        for element in model:
            if element[0]:
                ret.append(element[1])
        return ret

if __name__ == '__main__':
    parser = optparse.OptionParser()
    parser.add_option('-p', '--search-path',
                      dest='search_path',
                      default=None,
                      help='Where to search certificates')
    parser.add_option('-d', '--install-dnie',
                      action='store_true',
                      dest='install_dnie',
                      default=False,
                      help='Install necesary modules for the DNIe')

    (options, args) = parser.parse_args()

    cert_manager = CertManager([FireFoxApp(), EvolutionApp()])
    cert_manager.run(options)
