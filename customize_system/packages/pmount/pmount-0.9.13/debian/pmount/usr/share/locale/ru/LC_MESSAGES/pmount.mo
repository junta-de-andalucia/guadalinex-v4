��    <      �  S   �      (  S   )      }     �  "   �  (   �  ;     )   D  !   n  -   �  /   �  4   �  #   #  2   G  (   z     �      �     �  %     %   )  (   O  1   x     �  %   �  -   �      	  *   ?	     j	      �	  "   �	  (   �	     �	  ;   
  ;   L
  !   �
  1   �
  +   �
  !     ,   *  %   W     }     �     �  $   �  /   �  &   "     I  4   _     �  D   �  C   �  6   3  6   j  0   �  5   �  %     >   .  �  m  &  E  O   l  #  �  �   �  ;   u  '   �  9   �  L     �   `  h   �  @   Q  o   �  ]     z   `  S   �  X   /  a   �  J   �  L   5  K   �  _   �  M   .  @   |  H   �  @     I   G  o   �  E     L   G  G   �  C   �  ;      p   \  H   �  u     s   �  .       `   /   ]   �   Q   �   g   @!  S   �!  J   �!  >   G"  7   �"  `   �"  S   #  B   s#  2   �#  j   �#  :   T$  z   �$  �   
%  n   �%  �   &  s   �&  n   '  T   t'  s   �'  Y   =(  R  �(  �   �*     ,             6      "   .          1          	   +      ;   7          -   3   4   '                   <          8              /              )      $      2   
                         *      !         %         &          5   :               9      (                             #          0    %s --unlock <device> <pid>
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
 Error: mount point %s is already in /etc/fstab
 Error: mount point %s is not below %s
 Error: out of memory
 Error: this program needs to be installed suid root
 Error: umount failed
 Internal error: could not change effective group id to real group id Internal error: could not change effective user uid to real user id Internal error: could not change to effective gid root Internal error: could not change to effective uid root Internal error: could not determine mount point
 Internal error: getopt_long() returned unknown value
 Internal error: mode %i not handled.
 Internal error: mount_attempt: given file system name is NULL
 Options:
  -r          : force <device> to be mounted read-only
  -w          : force <device> to be mounted read-write
  -s, --sync  : mount <device> with the 'sync' option (default: 'async')
  --noatime   : mount <device> with the 'noatime' option (default: 'atime')
  -e, --exec  : mount <device> with the 'exec' option (default: 'noexec')
  -t <fs>     : mount as file system type <fs> (default: autodetected)
  -c <charset>: use given I/O character set (default: 'utf8' if called
                in an UTF-8 locale, otherwise mount default)
  -u <umask>  : use specified umask instead of the default (only for
                file sytems which actually support umask setting)
 --passphrase <file>
                read passphrase from file instead of the terminal
                (only for LUKS encrypted devices)
  -d, --debug : enable debug output (very verbose)
  -h, --help  : print help message and exit successfuly
  --version   : print version number and exit successfully Usage:

%s [options] <device> [<label>]

  Mount <device> to a directory below %s if policy requirements
  are met (see pmount(1) for details). If <label> is given, the mount point
  will be %s/<label>, otherwise it will be %s<device>.
  If the mount point does not exist, it will be created.

 Warning: device %s is already handled by /etc/fstab, supplied label is ignored
 Project-Id-Version: pmount 0.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2006-08-15 23:25+0200
PO-Revision-Date: 2006-08-13 20:02+0000
Last-Translator: intel <intel19@yandex.ru>
Language-Team: Russian
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 %s --unlock <device> <pid>
  Снимает блокировку <устройства> процессом c идентификатором <pid>.

 Ошибка: %s - неблочное устройство
 Ошибка: %s - не каталог
 Ошибка: '%s' - некорректное число
 Ошибка: метка неможет содержать символ '/'
 Ошибка: невозможно установить блокировку для несуществующего процесса %u
 Ошибка: невозможно установить соединение с шиной dbus: %s: %s
 Ошибка: невозможно создать каталог Ошибка: для процесса %s невозможно создать файл блокировки: %s
 Ошибка: невозможно создать файл-отметку в каталоге Ошибка: невозможно расшифровать устройство (неправильный пароль?)
 Ошибка: невозможно удалить точку подключения Ошибка: невозможно определить путь к устройству Ошибка: невозможно понизить привелегии пользователя Ошибка: невозможно выполнить команду mount Ошибка: невозможно выполнить команду pmount
 Ошибка: невозможно выполнить команду umount Ошибка: невозможно определить состояние устройства Ошибка: невозможно определить каталог sysfs
 Ошибка: невозможно открыть <sysfs>/block/ Ошибка: невозможно открыть <sysfs>/block/<device> Ошибка: невозможно открыть каталог Ошибка: невозможно открыть файл типа fstab Ошибка: для процесса %s невозможно удалить файл блокировки: %s
 Ошибка: %s - несуществующее устройство
 Ошибка: устройство %s уже присоеденено к %s
 Ошибка: %s - заблокированное устройство
 Ошибка: устройство %s неприсоеденено
 Ошибка: %s - несъемное устройство
 Ошибка: устройство %s было присоеденено другим пользователем
 Ошибка: слишком длинное имя устройства
 Ошибка: каталог %s уже содержит присоединенную файловую систему
 Ошибка: каталок %s не содержит присоединенной файловой системы
 Ошибка: каталог %s не пуст
 Ошибка: do_unlock: невозможно удалить каталог блокировки Ошибка: указанный UDI - неприсоединяемое устройство
 Ошибка: некорректное мая кодовой таблицы '%s'
 Ошибка: некорректное имя устройства %s (должно быть в /dev/)
 Ошибка: некорректное имя файловой системы '%s'
 Ошибка: некорректная инверсная маска '%s'
 Ошибка: метка неможет быть пустой
 Ошибка: слишком длинная метка
 Ошибка: переопределенное устройство уже существует
 Ошибка: точка монтирования %s уже есть в /etc/fstab
 Ошибка: точка присоединения %s не в %s
 Ошибка: закончилась память
 Ошибка: данная программа должна быть установлена с 'suid root'
 Ошибка: отсоединение неудалось
 Внутренняя ошибка: невозможно изменить текущую группу на реальную Внутренняя ошибка: невозможно изменить текущие права пользователя на реальные Внутренняя ошибка: невозможно изменить текущую группу на root Внутренняя ошибка: невозможно изменить текущие права пользователя на root Внутренняя ошибка: невозможно определить точку присоединения
 Внутренняя ошибка: getopt_long() возвратила неизвестное значение
 Внутренняя ошибка: режим %i не поддерживается.
 Внутренняя ошибка: mount_attempt: указанное имя файловой системы - NULL
 -r : примонтировать <устройство> толька для чтения Применение:

%s [параметры] <устройство> [<метка>]

  Подключает <устройство> в каталог %s, если это не противоречит
  политике безопасности (детальнее, см. pmount(1)).
  Если указана <метка>, точка подключения будет в виде
  %s<метка>, в противном случае - %s<устройство>.
  Если точка подключения несуществует, она будет создана автоматически.

 Предупреждение: Т.к. устройство %s уже описано в /etc/fstab,
указанная метка будет проигнорирована
 