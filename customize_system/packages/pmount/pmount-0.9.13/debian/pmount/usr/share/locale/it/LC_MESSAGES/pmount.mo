��    <      �  S   �      (  >  )  S   h      �     �  "   �  (     ;   G  )   �  !   �  -   �  /   �  4   -  #   b  2   �  (   �     �      	     "	  %   B	  %   h	  d   �	  (   �	  1   
     N
  %   n
  -   �
      �
  *   �
           *  "   K  (   n     �  ;   �  ;   �  !   ,  1   N  +   �  !   �  ,   �  %   �     !     :     Z  $   q  &   �     �  4   �       D     C   c  6   �  6   �  0     5   F  %   |  >   �  &  �  O     �  X  �  �  [   �  +   �        '   )  .   Q  G   �  /   �  '   �  ?      8   `  B   �  0   �  E     8   S  "   �  $   �  #   �  5   �  0   .  �   _  -   �  ;     '   O  0   w  B   �  %   �  0     .   B  )   q  ,   �  >   �  *     =   2  <   p  %   �  =   �  2     +   D  :   p  &   �      �  *   �       +   >  3   j     �  G   �        H     G   a  =   �  =   �  :   %  B   `  ,   �  F   �  8     a   P!     .                   $   /                    
   -      ;   8   	   7   0   4   5   )                   <          9              2              +      &   !   3                             ,      #         '         (          6                   :      *             "               %          1    %s --lock <device> <pid>
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
 Project-Id-Version: pmount
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2006-08-15 23:25+0200
PO-Revision-Date: 2005-12-06 16:52+0000
Last-Translator: Danilo Piazzalunga <danilopiazza@gmail.com>
Language-Team: Italian <tp@lists.linux.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rosetta-Version: 0.1
X-Generator: Rosetta (http://launchpad.ubuntu.com/rosetta/)
 %s --lock <dispositivo> <pid>
  Impedisce ulteriori pmount di <dispositivo> finché questo non è sbloccato
  di nuovo. <pid> specifica l'id del processo che detiene il lock. Questo
  permette a diversi processi indipendenti di fare il lock ad un dispositivo
  ed evita lock illimitati da parte di processi andati in crash (id di processi
  non esistenti sono ripuliti prima di tentare un mount).

 %s --unlock <dispsitivo> <pid>
  Rimuove il lock sul <dispositivo> per il processo <pid>.

 Errore: %s non è un dispositivo a blocchi
 Errore: %s non è una directory
 Errore: «%s» non è un numero valido
 Errore: "/" non deve comparire nell'etichetta
 Errore: impossibile fare il lock per il pid %u, il processo non esiste
 Errore: impossibile connettersi a dbus: %s: %s
 Errore: impossibile creare la directory Errore: impossibile creare il lock file per questo pid: %s: %s
 Errore: impossibile creare il file stamp nella directory Errore: impossibile decifrare il dispositivo (passphrase errata?)
 Errore: impossibile cancellare il punto di mount Errore: impossibile determinare il percorso effettivo del dispositivo Errore: non è possibile eliminare tutti i privilegi uid Errore: impossibile eseguire mount Errore: impossibile eseguire pmount
 Errore: impossibile eseguire umount Errore: impossibile ottenere lo stato del dispositivo Errore: impossibile ottenere la directory sysfs
 Errore: impossibile fare il lock della directory di mount. Probabilmente un altro pmount è in esecuzione per questo punto di mount.
 Errore: impossibile aprire <sysfs dir>/blobk/ Errore: impossibile aprire <sysfs dir>/block/<dispositivo>/ Errore: impossibile aprire la directory Errore: impossibile aprire il file di tipo fstab Errore: impossibile rimuovere il lock file per questo pid: %s: %s
 Errore: il dispositivo %s non esiste
 Errore: il dispositivo %s è già montato in %s
 Errore: il dispositivo %s è in stato di lock
 Errore: il dispositivo %s non è montato
 Errore: il dispositivo %s non è rimovibile
 Errore: il dispositivo %s è stato montato da un altro utente
 Errore: nome del dispositivo troppo lungo
 Errore: la directory %s contiene già un file system montato
 Errore: la directory %s non contiene un file system montato
 Errore: la directory %s non è vuota
 Errore: do_unlock: impossibile rimuovere la directory di lock Errore: lo UDI fornito non è un volume montabile
 Errore: set di caratteri «%s» non valido
 Errore: dispositivo %s non valido (deve trovarsi in /dev)
 Errore: file system «%s» non valido
 Errore: umask «%s» non valida
 Errore: l'etichetta non deve essere vuota
 Errore: etichetta troppo lunga
 Errore: il dispositivo mappato esiste già
 Errore: il punto di mount %s non si trova sotto %s
 Errore: memoria esaurita
 Errore: questo programma deve essere installato con i permessi di root
 Errore: umount fallito
 Errore interno: impossibile porre il gid effettivo uguale a quello reale Errore interno: impossibile porre l'uid effettivo uguale a quello reale Errore interno: impossibile ottenere un gid effettivo di root Errore interno: impossibile ottenere un uid effettivo di root Errore interno: impossibile determinare il punto di mount
 Errore interno: getopt_long() ha restituito un valore sconosciuto
 Errore interno: modalità %i non gestibile.
 Errore interno: mount_attempt: il tipo di file system fornito è NULL
 Uso:

%s [opzioni] <dispositivo> [<etichetta>]

  Monta il <dispositivo> in una directory sotto %s se i requisiti 
  sono rispettati (vedere pmount(1) per i dettagli). Se è data <etichetta>,
  il punto di mount sarà %s/<etichetta>, altrimenti %s<dispositivo>.
  Se il punto di mount non esiste verrà creato.

 Attenzione: il dispositivo %s è già gestito da /etc/fstab,
l'etichetta fornita verrà ignorata
 