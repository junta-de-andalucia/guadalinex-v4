��          �      �        S   	  (   ]  ;   �  -   �  #   �  2     (   G     p      �  -   �     �  1   �  !   -  ,   O  %   |     �     �  4   �  5     >   D  &  �  O   �  e  �  Q   `  ,   �  2   �  ,   	     ?	  *   ^	  &   �	     �	     �	  ,   �	     
  -   1
  *   _
  5   �
  -   �
     �
       /   "  -   R  C   �  H  �  V                                                                                        
      	             %s --unlock <device> <pid>
  Remove the lock on <device> for process <pid> again.

 Error: '/' must not occur in label name
 Error: cannot lock for pid %u, this process does not exist
 Error: could not create pid lock file %s: %s
 Error: could not delete mount point Error: could not determine real path of the device Error: could not drop all uid privileges Error: could not execute mount Error: could not execute pmount
 Error: could not remove pid lock file %s: %s
 Error: device name too long
 Error: do_unlock: could not remove lock directory Error: invalid charset name '%s'
 Error: invalid device %s (must be in /dev/)
 Error: invalid file system name '%s'
 Error: label must not be empty
 Error: label too long
 Error: this program needs to be installed suid root
 Internal error: getopt_long() returned unknown value
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
PO-Revision-Date: 2005-03-12 11:47+0000
Last-Translator: Carlos Z.F. Liu <carlosliu@users.sourceforge.net>
Language-Team: Chinese (China) <zh_CN@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rosetta-Version: 0.1
 %s --unlock <设备> <pid>
  再次为进程 <pid> 删除 <设备> 上的锁。

 错误：“/”不能出现在卷标名中
 错误：无法锁定 pid %u，此进程不存在
 错误：无法创建 pid 锁文件 %s：%s
 错误：无法删除挂载点 错误：无法确定设备的真实路径 错误：无法撤消所有 uid 特权 错误：无法执行 mount 错误：无法执行 pmount
 错误：无法删除 pid 锁文件 %s：%s
 错误：设备名太长
 错误：do_unlock：无法删除锁定目录 错误：无效的字符集名称“%s”
 错误：无效的设备名 %s (必须在 /dev/ 中)
 错误：无效的文件系统名称“%s”
 错误：卷标不能为空
 错误：卷标太长
 错误：本程序需要被安装为 suid root
 内部错误：getopt_long() 返回未知值
 内部错误：mount_attempt：提供的文件系统名称为 NULL
 用法：

%s [选项] <设备> [<卷标>]

  如果已经满足了 policy 要求(参见 pmount(1) 以获得更多细节)，
  就将 <设备> 挂载到 %s 下的一个目录中。如果给定了 <卷标>，
  挂载点就是 %s/<卷标>，否则将使用 %s<设备>。如果挂载点尚不存在，
  程序将会创建它。

 警告：设备 %s 已经由 /etc/fstab 负责处理，您提供的卷标将被忽略
 