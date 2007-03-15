��    8      �  O   �      �  >  �  S         l     �  "   �  (   �  ;   �  )   3  !   ]  -     /   �  4   �  #     2   6  (   i     �      �     �  %   �  %   	  d   >	  (   �	  1   �	     �	  %   
  -   D
      r
  *   �
     �
      �
  "   �
  (        G  ;   d  ;   �  !   �  1   �  +   0  !   \  ,   ~  %   �     �     �     
  $   !  &   F     m  4   �     �  0   �  5   �  %   5  >   [  &  �  O   �  F    q  X  N   �           :  &   T  #   {  6   �  *   �       )     (   F  4   o  )   �  1   �  ,         -     L     j  (   �  &   �  b   �  )   :  1   d     �  '   �  +   �       *         K  "   f  $   �  '   �     �  8   �  7   ,     d  0   �  -   �  $   �  ,     (   2     [  "   s     �      �  ,   �       4        M  2   g  9   �  $   �  <   �  d  6  U   �     4                7            5                    2                 #                0   %                     $   )       8       	   
      *   /             '          1         ,   (             -               !   +                 .   "   &                      3          6    %s --lock <device> <pid>
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
 Internal error: could not determine mount point
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
PO-Revision-Date: 2006-04-10 11:38+0000
Last-Translator: chaffeur <dav.hjelm@spray.se>
Language-Team: Swedish <sv@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rosetta-Version: 0.1
 %s --lock <enhet> <pid>
  Förhindra fler monteringar av <enhet> tills den blir upplåst igen. <pid>
  specifierar vilket process-id som låset gäller för. Detta gör att man kan låsa 
  en enhet för flera oberoende processer, och förhindrar att kraschade processer låser
  enheten på obestämd tid (icke-existerande pid rensas innan en montering
  försöks).

 %s --unlock <enhet> <pid>
  Ta bort låset på <enhet> för processen <pid>.

 Fel: %s är inte en block enhet
 Fel: %s är inte en mapp
 Fel: '%s' är inte ett giltigt nummer
 Fel: '/' tillåts inte i etiketter
 Fel: kan inte låsa för pid %u; processen finns inte
 Fel: kunde inte ansluta till dbus: %s: %s
 Fel: kunde inte skapa mapp Fel: kunde inte skapa pid-låsfil %s: %s
 Fel: kunde inte skapa stamp fil i mappen Fel: kunde inte dekryptera enheten (fel lösenord?)
 Fel: kunde inte ta bort monteringspunkten Fel: kunde inte avgöra enhetens riktiga sökväg Fel: kunde inte släppa alla uid-privilegier Fel: kunde inte exekvera mount Fel: kunde inte köra pmount
 Fel: kunde inte köra umount Fel: kunde inte erhålla enhetens status Fel: kunde inte erhålla sysfs-mappen
 Fel: kunde inte låsa monterings mappen. En annan pmount kanske körs för denna monteringspunkt.
 Fel: kunde inte öppna <sysfs dir>/block/ Fel: kunde inte öppna <sysfs dir>/block/<enhet>/ Fel: kunde inte öppna mapp Fel: kunde inte öppna fstab-type filen Fel: kunde inte ta bort pid-låsfil %s: %s
 Fel: enhet %s finns inte
 Fel: enheten %s är redan monterad på %s
 Fel: enheten %s är låst
 Fel: enheten %s är inte monterad
 Fel: enheten %s är inte löstagbar
 Fel: enheten %s monterades inte av dig
 Fel: enhetsnamn för långt
 Fel: mappen %s innehåller redan ett monterat filsystem
 Fel: mappen %s innehåller inte ett monterat filsystem
 Fel: mappen %s är inte tom
 Fel: do_unlock: kunde inte ta bort låskatalogen Fel: angiven UDI är inte en monterbar volym
 Fel: ogiltigt teckentabellnamn "%s"
 Fel: ogiltig enhet %s (måste vara i /dev/)
 Fel: felaktig filsystemsbeteckning "%s"
 Fel: felaktig umask %s
 Fel: etiketten får inte vara tom
 Fel: etiketten är för lång
 Fel: kartlagd enhet finns redan
 Fel: monteringspunkten %s är inte under %s
 Fel: slut på minne
 Fel: detta program måste installeras som suid root
 Fel: umount misslyckades
 Internt fel: kunde inte avgöra monteringspunkten
 Internt fel: getopt_long() returnerade ett okänt värde
 Internt fel: läget %i hanteras ej.
 Internt fel: monterings_försök: givet fil system är NULL
 Användning:

%s [flaggor] <enhet> [<beteckning>]

  Montera <enhet> på en katalog under %s om kraven ställda av policyn uppfylls
  (se pmount(1) för detaljer). Om <beteckning> är given, kommer monteringspunkten att
  bli %s/<beteckning>, annars kommer den att bli %s<enhet>.
  Om katalogen där enheten monteras inte finns så kommer den att skapas.

 Varning: enheten %s hanteras redan av /etc/fstab. Tillhandahållen etikett ignoreras
 