��          �   %   �      `  >  a  S   �  (   �  ;     -   Y  #   �  2   �  (   �       -   &     T  1   q  !   �  ,   �  %   �          8  4   O  D   �  C   �  6     5   D  %   z  >   �  &  �  O   	  s  V	  I  �
  W     1   l  7   �  -   �  (     5   -  ,   c     �  .   �  "   �  0   �  6   0  8   g  7   �      �     �  0     @   E  =   �  2   �  :   �  #   2  F   V  $  �  V   �                                                                     	                    
                                   %s --lock <device> <pid>
  Prevent further pmounts of <device> until it is unlocked again. <pid>
  specifies the process id the lock holds for. This allows to lock a device
  by several independent processes and avoids indefinite locks of crashed
  processes (nonexistant pids are cleaned before attempting a mount).

 %s --unlock <device> <pid>
  Remove the lock on <device> for process <pid> again.

 Error: '/' must not occur in label name
 Error: cannot lock for pid %u, this process does not exist
 Error: could not create pid lock file %s: %s
 Error: could not delete mount point Error: could not determine real path of the device Error: could not drop all uid privileges Error: could not execute mount Error: could not remove pid lock file %s: %s
 Error: device name too long
 Error: do_unlock: could not remove lock directory Error: invalid charset name '%s'
 Error: invalid device %s (must be in /dev/)
 Error: invalid file system name '%s'
 Error: label must not be empty
 Error: label too long
 Error: this program needs to be installed suid root
 Internal error: could not change effective group id to real group id Internal error: could not change effective user uid to real user id Internal error: could not change to effective gid root Internal error: getopt_long() returned unknown value
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
PO-Revision-Date: 2005-03-03 14:39+0000
Last-Translator: Ovidiu Borlean <ovidiu.borlean@gmail.com>
Language-Team: Romanian <ro@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rosetta-Version: 0.1
 %s --lock <dispozitiv> <pid>
Previne pmounts-uri viitoare ale <dispozitiv> pana cand este deblocat.
<pid> specifica id-ul procesului mentinut de lock.Aceasta pemite blocarea unui dispozitiv
prin cateva procese independente si evita blocari indefinite
ale proceselor blocate (pid-uri inexistente sunt sterse inainte de montare).

 %s --unlock <dispozitive> <pid>
Sterge lock-ul pe <dispozitiv> pentru procesul <pid>.

 Eroare:'/' nu trebuie sa apara in numele <label>
 Eroare: nu pot bloca pid-ul %u, acest proces nu exista
 Eroare: nu pot crea fisierul pid lock %s: %s
 Eroare: nu pot sterge punctul de montare Eroare: nu pot determina calea reala a dispozitivului Eroare: nu pot scadea toate privilegiile uid Eroare: nu pot executa mount Eroare: nu pot sterge fisierul pid lock %s:%s
 Eroare: nume dispozitiv prea lung
 Eroare: do unlocl: nu mot sterge directorul lock Eroare: numele '%s' setului de caractere este invalid
 Eroare: dispozitiv %s invalid (necesar sa fie in /dev/)
 Eroare: numele '%s' sistemului de fisiere este invalid
 Eroare: <label> nu poate fi gol
 Eroare: <label> prea lung
 Eroare: programul trebuie instalat cu suid root
 Eroare interna: nu pot schimba group id efectiv in group id real Eroare interna: nu pot schimba uid efectiv in user id-ul real Eroare interna: nu pot schimba in root gid efectiv Eroare interna: getopt_logn() a intor valoare necunoscuta
 Eroare interna: mod %i nesuportat.
 Eroare interna: mount_attempt: numele sistemului de fisiere este NULL
 Folosire:
%s [optiuni]<dispozitiv>[<label>]

  Mount <dispozitiv> intr-un directorsub %s daca cerintele
sunt intalnite(vezi pmount(1) pentru detalii). Daca ,label> este dat, punctul de montare va fi %s/<label>, altfel va fi %s<dispozitiv>.
Daca punctul de montare nu exista, el va fi creat.

 Atentie: dispozitivul %s este folosti de /etc/fstab, eticheta furnizata este ignorata
 