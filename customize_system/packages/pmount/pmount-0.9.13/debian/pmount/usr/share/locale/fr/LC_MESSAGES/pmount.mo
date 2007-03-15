��    ;      �  O   �        >  	  S   H      �     �  "   �  (   �  ;   '  )   c  !   �  -   �  /   �  4     #   B  2   f  (   �     �      �     	  %   "	  %   H	  d   n	  (   �	  1   �	     .
  %   N
  -   t
      �
  *   �
     �
      
  "   +  (   N     w  ;   �  ;   �  !     1   .  +   `  !   �  ,   �  %   �               :  &   Q     x  4   �     �  D   �  C     6   b  6   �  0   �  5     %   7  >   ]  &  �  O   �  �    �  �  h   u  0   �  %     )   5  9   _  M   �  4   �  ,     B   I  H   �  M   �  4   #  U   X  5   �  %   �  &   
  &   1  5   X  4   �  �   �  /   `  8   �  +   �  2   �  =   (  +   f  6   �  .   �  /   �  1   (  <   Z  )   �  C   �  J     *   P  :   {  3   �  1   �  <     3   Y     �  -   �     �  2   �  %   $  >   J     �  a   �  \     C   c  =   �  ?   �  ?   %   6   e   I   �   @  �   q   '"     7                :            8      2             1                 #                /   %         4           $   )       ;       	   
      *   .             '          0         ,   (             -   3           !   +                     "   &              5       6          9    %s --lock <device> <pid>
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
 Error: could not lock the mount directory. Another pmount is probably running for this mount point.
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
PO-Revision-Date: 2006-06-16 17:14+0000
Last-Translator: Pierre Slamich <pierre.slamich@gmail.com>
Language-Team: French <fr@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rosetta-Version: 0.1
X-Generator: Rosetta (http://launchpad.ubuntu.com/rosetta/)
 %s --lock <périphérique> <pid>
  Empèche tout p-montage du <périphérique> jusqu'à ce qu'il
  soit déverrouillé. <pid> indique le numéro de processus pour
  lequel le verrou est pris. Ceci permet de verrouiller un
  périphérique pour plusieurs processus indépendants et évite
  de créer des verrouillage indéfinis pour des processus qui
  ont échoué (les pids inexistants sont nettoyés avant de
  tenter un montage).

 %s --unlock <périphérique> <pid>
  Retire le verrou sur le <périphérique> pour le processus <pid>.

 Erreur : %s n'est pas un périphérique de bloc
 Erreur : %s n'est pas un répertoire
 Erreur : '%s' n'est pas un nombre valide
 Erreur : '/' ne doit pas apparaitre dans un nom de label
 Erreur : impossible de verrouiller pour le pid %u, ce processus n'existe pas
 Erreur : impossible de se connecter à dbus:%s : %s
 Erreur : impossible de créer de répertoire Erreur : impossible de créer le fichier de verrou de pid %s : %s
 Erreur : impossible de créer un fichier estampillé dans le répertoire Erreur ne peut pas décrypter le périphérique (mauvaise phrase secrète ?)
 Erreur : impossible de détruire le point de montage Erreur : impossible de déterminer le véritable chemin d'accès à ce périphérique Erreur : impossible de révoquer tous les privilèges Erreur : impossible d'exécuter mount Erreur: impossible d'exécuter pmount
 Erreur : impossible d'exécuter umount Erreur : n'a pas pu obtenir l'état du périphérique Erreur : impossible de trouver le répertoire sysfs
 Erreur : impossible de verrouiller le répertoire de montage. Une autre instance de pmount est probablement en cours d'utilisation sur ce point de montage.
 Erreur : impossible d'ouvrir <sysfs dir>/block/ Erreur : impossible d'ouvrir <sysfs dir>/block/<device>/ Erreur : impossible d'ouvrir le répertoire Erreur : impossible d'ouvrir le fichier fstab-type Erreur : impossible d'ôter le fichier de verrou pid %s : %s
 Erreur : le périphérique %s n'existe pas
 Erreur : le périphérique %s est déja monté sur %s
 Erreur : le périphérique %s est verrouillé
 Erreur : le périphérique %s n'est pas monté
 Erreur : le périphérique %s n'est pas amovible
 Erreur : le périphérique %s n'a pas été monté par vous
 Erreur : nom du périphérique trop long
 Erreur : le répertoire %s contient déjà un système de fichiers
 Erreur : le répertoire %s ne contient pas de système de fichiers monté
 Erreur : le répertoire %s n'est pas vide
 Erreur : do_unlock: ne peut ôter le verrou du répertoire Erreur : L'UDI fourni n'est pas un volume montable
 Erreur : nom de jeu de caractères invalide '%s'
 Erreur : périphérique invalide %s (doit être dans /dev/)
 Erreur : nom de système de fichiers invalide '%s'
 Erreur : umask %s invalide
 Erreur : l'étiquette ne peut pas être vide
 Erreur : label trop long
 Erreur : le point de montage %s n'est pas sous %s
 Erreur : plus de mémoire disponible
 Erreur : ce programme a besoin d'être installé en suid root
 Erreur : échec de umount
 Erreur interne : impossible de changer de l'id effectif de groupe pour le véritable id du groupe Erreur interne : impossible de changer l'uid effectif pour le véritable id de l'utilisateur Erreur interne : impossible de changer pour le gid effectif de root Erreur interne : impossible de changer l'uid effectif de root Erreur interne : impossible de déterminer le point de montage
 Erreur interne : getopt_long() a retourné une valeur inconnue
 Erreur interne : le mode %i n'est pas pris en charge.
 Erreur interne : mount_attempt : le nom du système de fichiers est NULL
 Usage :

%s [options] <périphérique> [<label>]

  Monte le <périphérique> sur un répertoire sous %s si les contraintes
  sont satisfaites (voir pmount(1)). Si <label> est précisé, le point
  de montage sera %s/<label>, autrement ce sera %s<périphérique>.
  Si le point de montage n'existe pas, il sera créé.

 Avertissement : le périphérique %s est déjà pris en charge par /etc/fstab, l'étiquette fournie est ignorée
 