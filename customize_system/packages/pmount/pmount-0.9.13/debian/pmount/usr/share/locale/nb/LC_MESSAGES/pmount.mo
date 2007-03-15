��    7      �  I   �      �  >  �  S   �      D     e  "   �  (   �  ;   �  !     -   -  /   [  #   �  2   �  (   �           *     K  %   k  %   �  (   �  1   �     	  %   2	  -   X	      �	  *   �	     �	      �	  "   
  (   2
     [
  ;   x
  ;   �
  !   �
  1     +   D  !   p  ,   �  %   �     �       &        C  4   Y     �  D   �  C   �  6   -  6   d  0   �  5   �  %     >   (  &  g  O   �  �  �  `  {  K   �     (      H  $   i  )   �  ?   �  !   �  -     .   H  '   w  @   �  ,   �          +     K  %   j  %   �  -   �  1   �           5  +   V     �  4   �     �  %   �  &     )   ?  &   i  @   �  <   �  #     .   2  -   a  "   �  +   �  #   �  %        (  4   E     z  6   �     �  D   �  D   &  3   k  3   �  1   �  3     .   9  4   h  )  �  T   �     +                     )   (         -      !   "                  ,      #             &                           %   4   6                 7   	   0   2      /      '                 $         .       5                    
          *             1      3    %s --lock <device> <pid>
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
 Error: could not create directory Error: could not create pid lock file %s: %s
 Error: could not create stamp file in directory Error: could not delete mount point Error: could not determine real path of the device Error: could not drop all uid privileges Error: could not execute mount Error: could not execute pmount
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
 Project-Id-Version: pmount
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2006-08-15 23:25+0200
PO-Revision-Date: 2005-03-31 10:35+0000
Last-Translator: Sigurd Gartmann <sigurdga-ubuntu@brogar.org>
Language-Team: Bokmål, Norwegian <nb@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rosetta-Version: 0.1
X-Generator: Rosetta (http://launchpad.ubuntu.com/rosetta/)
 %s --lock <enhet> <pid>
  Forhindrer videre pmount-monteringer av <enhet> helt til den
  blir låst opp igjen. <pid> er hvilken prosess id låsen holdes
  for. Dette gjør det mulig å låse en enhet av flere uavhengige
  prosesser, og unngår uendelig låsing av krasjede prosesser
  (pids som ikke finnes blir ryddet før forsøk på en montering).

 %s --unlock <enhet> <pid>
  Fjerner låsen på <enhet> for prosess <pid>.

 Feil: %s er ikke en blokkenhet
 Feil. «%s» er ikke en katalog
 Feil: «%s» er ikke et gyldig tall
 Feil: Etiketter kan ikke inneholde «/»
 Feil: Kan ikke låse for %u, siden denne prosessen ikke finnes
 Feil: Kunne ikke opprette katalog Feil: Kunne ikke opprette pid-låsfil %s: %s
 Feil: Kunne ikke opprette stempelfil i katalog Feil: Kunne ikke slette monteringspunkt Feil: Kunne ikke bestemme den ordentlige stien for denne enheten Feil: Kunne ikke fjerne alle uid-rettigheter Feil: Kunne ikke kjøre mount Feil: Kunne ikke kjøre pmount
 Feil: Kunne ikke kjøre umount Feil: Kunne ikke få status fra enhet Feil: Kunne ikke hente sysfs-katalog
 Feil: Kunne ikke åpne <sysfs-katalog>/block/ Feil: Kunne ikke åpne <sysfs-kat>/block/<enhet>/ Feil: Kunne ikke åpne katalog Feil: Kunne ikke åpne fstab-fil Feil: Kunne ikke fjerne pid-låsfil %s: %s
 Feil: Enhet %s finnes ikke
 Feil: Enheten «%s» er allerede montert på «%s»
 Feil: Enheten «%s» er låst
 Feil: Enheten «%s» er ikke montert
 Feil: Enheten «%s» kan ikke fjernes
 Feil: Enheten %s ble ikke montert av deg
 Feil: Navnet på enheten er for langt
 Feil: Katalogen «%s» inneholder allerede et montert filsystem
 Feil: Katalogen «%s» inneholder ikke et montert filsystem
 Feil: Katalogen «%s» er ikke tom
 Feil: du_unlock: Kunne ikke fjerne låskatalog Feil: Oppgitt UDI er ikke en monterbar enhet
 Feil: Ugyldig tegnsettnavn «%s»
 Feil: Ugyldig enhet %s (må være i /dev/)
 Feil: Ugyldig filsystemnavn «%s»
 Feil: etiketten kan ikke være blank
 Feil: Etiketten er for lang
 Feil: Monteringspunktet «%s» er ikke under «%s»
 Feil: Ikke mer minne
 Feil: Dette programmet må være installert suid root
 Feil: Avmontering feilet
 Intern feil: Kunne ikke endre effektiv gruppe-id til ekte grouppe-id Intern feil: kunne ikke endre effektiv bruker-uid til ekte bruker-id Intern feil: Kunne ikke endre til effektiv gid root Intern feil: Kunne ikke endre til effektiv uid root Intern feil: Kunne ikke bestemme monteringspunkt
 Intern feil: getopt_long() returnerte ukjent verdi
 Intern feil: modus %i er blir ikke håndtert.
 Intern feil: mount_attempt: Filsystemnavnet er NULL
 Bruk:

%s [valg] <enhet> [<etikett>]

  Monter <enhet> til en katalog under %s hvis krav er tilfredsstilt
  (se pmount(1) for mer). Hvis <etikett> er oppgitt, vil
  monteringspunktet bli %s/<etikett>, ellers vil det bli
  %s/<enhet>. Hvis monteringspunktet ikke finnes, vil det 
  bli opprettet.

 Advarsel: Enheten «%s» håndteres allerede i /etc/fstab, ny etikett blir ignorert
 