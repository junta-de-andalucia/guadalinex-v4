
%define _libdir %(pkg-config --variable=libdir gnome-vfs-2.0)
%define _sysconfdir /etc
%define name synce-gnomevfs
%define rel 1

Summary: SynCE: GnomeVFS module for accessing Windows CE and Pocket PC Devices.
Name: %{name}
Version: 0.9.0
Release: %{rel}
License: MIT
Group: Gnome/Libraries
Source: %{name}-%{version}.tar.gz
URL: http://synce.sourceforge.net/
Distribution: SynCE RPM packages
Vendor: The SynCE Project
Buildroot: %{_tmppath}/%{name}-%{version}-%{release}-root

Requires:       gnome-vfs2
Requires:       synce        >= 0.9.0
BuildRequires:  synce-devel  >= 0.9.0

%description
SynCE-GnomeVFS is part of the SynCE project:

  http://synce.sourceforge.net/

%prep
rm -rf $RPM_BUILD_ROOT
%setup -q

%build
%configure
make %{_smp_mflags}

%install
%makeinstall
FILE=$RPM_BUILD_ROOT/%{_libdir}/gnome-vfs-2.0/modules/libsyncevfs.a
test -f $FILE && rm $FILE

%files
%defattr(-, root, root)
%doc README LICENSE
%{_libdir}/gnome-vfs-2.0/modules/libsyncevfs.so
%{_libdir}/gnome-vfs-2.0/modules/libsyncevfs.la
%{_sysconfdir}/gnome-vfs-2.0/modules/synce-module.conf
%{_bindir}/synce-in-computer-folder
%{_datadir}/pixmaps/synce/synce-color.png
%{_datadir}/synce/synce-in-computer-folder.sh
