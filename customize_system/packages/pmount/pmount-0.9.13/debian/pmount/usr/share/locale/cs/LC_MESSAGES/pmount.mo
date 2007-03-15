��    8      �  O   �      �  >  �  S         l     �  "   �  (   �  ;   �  )   3  !   ]  -     /   �  #   �  2     (   4      ]     ~  %   �  %   �  (   �  1   	     E	  %   e	  -   �	      �	  *   �	     
      !
  "   B
  (   e
     �
  ;   �
  ;   �
  !   #  1   E  +   w  !   �  ,   �  %   �          1     Q  $   h  &   �     �  4   �     �  D     6   Z  6   �  0   �  5   �  %   /  >   U  &  �  O   �  �    L  �  S   �  %   S     y  "   �  *   �  :   �  )         G  2   h  3   �  #   �  2   �  -   &     T     p  %   �  %   �  /   �  8         A  (   b  3   �  !   �  0   �  "     '   5  *   ]  &   �  ,   �  A   �  >     $   ]  7   �  1   �  *   �  5     2   M     �  $   �      �  +   �  )        7  6   R     �  I   �  6   �  7      .   X  9   �  ,   �  B   �  F  1  Z   x     4                7            5      0              /                               (   -   "         1           !   &              	   
      '   ,             $          .         )   %             *                  8                  +      #              2       3          6    %s --lock <device> <pid>
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
 Error: could not create stamp file in directory Error: could not delete mount point Error: could not determine real path of the device Error: could not drop all uid privileges Error: could not execute pmount
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
 Internal error: could not change effective group id to real group id Internal error: could not change to effective gid root Internal error: could not change to effective uid root Internal error: could not determine mount point
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
PO-Revision-Date: 2005-09-30 12:49+0000
Last-Translator: Vlastimil Skacel <skacel@svtech.cz>
Language-Team: Czech <cs@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rosetta-Version: 0.1
X-Generator: Rosetta (http://launchpad.ubuntu.com/rosetta/)
 %s --lock <zařízení><pid>
  Zabrání příštím pmounts <zařízení> dokud není znovu odemčeno.
  <pid> specifikuje id uzamykajícího procesu. To umožňuje zamknout
  zařízení několika nezávislými procesy a zabrání nekonečnému
  uzamčení havarovanými procesy (neexistující pid jsou smazány
  před mount)

 %s --unlock <device> <pid>
  Odstranit znovu zámek na <device> pro proces <pid>.

 Chyba: %s není blokové zařízení
 Chyba: %s není adresář
 Chyba: '%s' není platné číslo
 Chyba:'/' se nesmí vyskytovat ve jméně
 Chyba: nelze zamknout pro pid %u, tento proces neexistuje
 Chyba: nelze se připojit k dbus: %s: %s
 Chyba: nelze vytvořit adresář Chyba: nelze vytvořit pid zamykací soubor %s:%s
 Chyba: nelze vytvořit soubor razítka v adresáři Chyba: nelze smazat bod připojení Chyba: nelze určit opravdovou cestu k zařízení Chyba: nelze zapsat všechna uid oprávnění Chyba: nelze spusit pmount
 Chyba: nelze spustit umount Chyba: nelze zjistit stav zařízení Chyba: nelze získat sysfs adresář
 Chyba: nelze otevřít <sysfs adresář>/block/ Chyba: nelze otevřít <sysfs adresář>/block/<device>/ Chyba: nelze otevřít adresář Chyba: nelze otevřít soubor fstab-type Chyba: nelze odstranit pid zamykací soubor %s: %s
 Chyba: zařízení %s neexistuje
 Chyba: zařízení %s je jíž připojeno na %s
 Chyba: zařízení %s je zamčeno
 Chyba: zařízení %s není připojeno
 Chyba: zařízení %s není vyjímatelné
 Chyba: zařízení %s nepřipojils ty
 Chyba: příliš dlouhé jméno zařízení
 Chyba: adresář %s již obsahuje připojený souborový systém
 Chyba: adresář %s neobsahuje připojený souborový systém
 Chyba: adresář %s není prázdný
 Chyba: do_unlock: nelze odstranit uzamčení adresáře Chyba: dané UDI neni připojitelné zařízení
 Chyba: špatné jméno znakové sady '%s'
 Chyba: neplatné zařízení %s (musí být v /dev/)
 Chyba: špatné jméno souborového systému '%s'
 Chyba: neplatná umask %s
 Chyba: jméno nesmí být prázdné
 Chyba: Příliš dlouhé jméno
 Chyba: mapované zařízení již existuje
 Chyba: připojovací bod %s není pod %s
 Chyba: nedostatek paměti
 Chyba: tento program je potřeba instalovat jako root
 Chyba: umount selhal
 Vnitřní chyba: nelze změnit id užívané skupiny na id pravé skupiny Vnitřní chyba: nelze změnit na skutečné gid roota Vnitřní chyba: nelze změnit úspěšně na uid roota Vnitřní chyba: nelze určit bod připojení
 Vnitřní chyba: getopt_long() vrátil neznámou hodnotu
 Vnitřní chyba: mód %i není obsluhován.
 Vnitřní chyba: mount_attempmt: předané jméno souboru je NULL
 Použití:

%s [volby]<zařízení>[<jméno>]

  Připojí <zařízení> do adresáře na %s jestliže má oprávnění
  (podívej do pmount(1) na podrobnosti). Jestliže je <jméno>
  zadáno,   připojovací bod bude %s/<jméno>, jinak to bude%s
  <zařízení>. Jestliže připojovací bod neexistuje, 
  bude vytvořen.

 Varování: zařízení %s je již řízeno s /etc/fstab, dodané jméno bude ignorováno
 