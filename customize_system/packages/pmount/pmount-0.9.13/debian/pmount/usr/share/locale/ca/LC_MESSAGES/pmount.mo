��    ;      �  O   �        >  	  S   H      �     �  "   �  (   �  ;   '  )   c  !   �  -   �  /   �  4     #   B  2   f  (   �     �      �     	  %   "	  %   H	  (   n	  1   �	     �	  %   �	  -   
      =
  *   ^
     �
      �
  "   �
  (   �
       ;   /  ;   k  !   �  1   �  +   �  !   '  ,   I  %   v     �     �     �  $   �  &        8  4   N     �  D   �  C   �  6   "  6   Y  0   �  5   �  %   �  >     &  \  O   �  �  �  r  v  f   �  (   P     y  %   �  .   �  C   �  *   1  #   \  A   �  3   �  =   �  1   4  <   f  3   �     �  %   �  $     6   B  3   y  -   �  9   �  #     3   9  C   m  $   �  -   �  %     (   *  *   S  2   ~  %   �  >   �  >     #   U  A   y  ,   �  4   �  3     4   Q     �  %   �     �  )   �  /        ?  J   X     �  g   �  X   $  =   }  A   �  ;   �  <   9  ,   v  B   �  =  �  W   $      7                :            8      2             1                 "                /   $         4           #   (       ;      	   
      )   .             &          0         +   '             ,   3               *                  -   !   %              5       6          9    %s --lock <device> <pid>
  Prevent further pmounts of <device> until it is unlocked again. <pid>
  specifies the process id the lock holds for. This allows to lock a device
  by several independent processes and avoids indefinite locks of crashed
  processes (nonexistant pids are cleaned before attempting a mount).

 %s --unlock <device> <pid>
  Remove the lock on <device> for process <pid> again.

 Error: %s is not a block device
 Error: %s is not a directory
 Error: '%s' is not a valid number
 Error: '/' must not occur in label name
 Error: cannot lock for pid %u, this process does not exist
 Error: could not connect to dbus: %s: %s
 Error: could not create directory Error: could not create pid lock file %s: %s
 Error: could not create stamp file in directory Error: could not decrypt device (wrong passphrase?)
 Error: could not delete mount point Error: could not determine real path of the device Error: could not drop all uid privileges Error: could not execute mount Error: could not execute pmount
 Error: could not execute umount Error: could not get status of device Error: could not get sysfs directory
 Error: could not open <sysfs dir>/block/ Error: could not open <sysfs dir>/block/<device>/ Error: could not open directory Error: could not open fstab-type file Error: could not remove pid lock file %s: %s
 Error: device %s does not exist
 Error: device %s is already mounted to %s
 Error: device %s is locked
 Error: device %s is not mounted
 Error: device %s is not removable
 Error: device %s was not mounted by you
 Error: device name too long
 Error: directory %s already contains a mounted file system
 Error: directory %s does not contain a mounted file system
 Error: directory %s is not empty
 Error: do_unlock: could not remove lock directory Error: given UDI is not a mountable volume
 Error: invalid charset name '%s'
 Error: invalid device %s (must be in /dev/)
 Error: invalid file system name '%s'
 Error: invalid umask %s
 Error: label must not be empty
 Error: label too long
 Error: mapped device already exists
 Error: mount point %s is not below %s
 Error: out of memory
 Error: this program needs to be installed suid root
 Error: umount failed
 Internal error: could not change effective group id to real group id Internal error: could not change effective user uid to real user id Internal error: could not change to effective gid root Internal error: could not change to effective uid root Internal error: could not determine mount point
 Internal error: getopt_long() returned unknown value
 Internal error: mode %i not handled.
 Internal error: mount_attempt: given file system name is NULL
 Usage:

%s [options] <device> [<label>]

  Mount <device> to a directory below %s if policy requirements
  are met (see pmount(1) for details). If <label> is given, the mount point
  will be %s/<label>, otherwise it will be %s<device>.
  If the mount point does not exist, it will be created.

 Warning: device %s is already handled by /etc/fstab, supplied label is ignored
 Project-Id-Version: mount removable devices as normal user
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2006-08-15 23:25+0200
PO-Revision-Date: 2006-08-08 11:09+0000
Last-Translator: el_libre <el.libre@gmail.com>
Language-Team: Catalan <ca@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rosetta-Version: 0.1
X-Generator: Rosetta (http://launchpad.ubuntu.com/rosetta/)
 %s --lock <dispositiu> <pid>
  Prevén més pmounts del <dispositiu> fins que no es desbloqui altra vegada. <pid>
  especifica l'identificador del procés al qual actua el blocatge. Això permet bloquejar un dispositiu
  per diversos processos independents i evita bloquejos indefinits de processos
  fallits (pids no existents es netegen abans d'intentar montar-los).

 %s --unlock <dispositiu> <pid>
  Remou el blocatge al <dispositiu> per processar <pid> altra vegada.

 Error: %s no és un dispositiu de blocs
 Error: %s no és un directori
 Error: '%s' no és un número vàlid
 Error: '/' no ha d'estar al nom de l'etiqueta
 Error: no s'ha pogut blocar el pid  %u. Aquest procés no existeix
 Error: no es pot connectar a dbus: %s: %s
 Error: no es pot crear el directori Error: no s'ha pogut crear un blocatge del pid del fitxer %s: %s
 Error: no es pot crear fitxer de marca al directori Error: no es pot desencriptar el dispositiu (clau errònia?)
 Error: no s'ha pogut eliminar el punt de muntatge Error: no s'ha pogut determinar el camí real del dispositiu Error: no es poden eliminar tots els privilegis uid Error: no es pot executar mount Error: no s'ha pogut executar pmount
 Error: no s'ha pogut executar umount Error: no s'ha pogut aconseguir l'estat del dispositiu Error: no s'ha pogut aconseguir el directori sysfs
 Error: no s'ha pogut obrir <sysfs dir>/block/ Error: no s'ha pogut obrir <sysfs dir>/block/<dispsitiu>/ Error, no es pot obrir el directori Error: no s'ha pogut obrir el fitxer de tipus fstab Error: no s'ha pogut remoure el blocatge del pid del fitxer %s: %s
 Error: el dispositiu %s no existeix
 Error: el dispositiu %s ja està montat a %s
 Error: el dispositiu %s està blocat
 Error: el dispositiu %s no està montat
 Error: el dispositiu %s no es pot remoure
 Error: el dispositiu %s no ha estat montat per tu
 Error: nom de dispositiu massa llarg
 Error: el directori %s ja conté un sistema de fitxers montat
 Error: el directori %s no conté un sistema de fitxers montat
 Error: el directori %s no és buit
 Error: do_unlock: no s'ha pogut remoure el blocatge del directori Error: l'UDI donat no és un volum montable
 Error: el nom %s del joc de caràcters és invàlid
 Error: dispositiu %s invàlid (ha d'estar a /dev/)
 Error: el nom %s de sistema de fitxers és invàlid
 Error: umask invàlida %s
 Error: l'etiqueta no pot estar buida
 Error: etiqueta massa llarga
 Error: el dispositiu mapejat ja existeix
 Error: el punt de montatge %s no és a sota %s
 Error: fora de memòria
 Error: aquest programa necessita ser instal·lar amb suid de super-usuari
 Error: ha fallat umount
 Error intern: no s'ha pogut canviar l'identificació de grup efectiva a una identificació real de grup Error intern: no s'ha pogut canviar uid d'usuari efectiva a identificació d'usuari real Error intern: no s'ha pogut canviar a gid superusuari efectiu Error intern: no s'ha pogut canviar a uid de superusuari efectiva Error intern: no s'ha pogut determinar el punt de montatge
 error intern: getopt_long() ha retornat un valor desconegut
 error intern: el mode %i no s'ha gestionat.
 error intern: mount_attempt: el sistema de fitxers donat és NULL
 Ús:

%s [opcions] <dispositiu> [<etiqueta>]

  Monta <dispositiu> al directori sota %s si es compleixen
  els requeriments (vegeu pmount(1) per més detalls). Si es dóna <etiqueta>, el punt de muntatge
  serà %s/<etiqueta>, en cas contrari, serà %s<dispositiu>.
  Si el punt de muntatge no existeix, es crearà.

 Avís: el dispositiu %s ja és gestionat per /etc/fstab, s'ignorarà l'etiqueta donada
 