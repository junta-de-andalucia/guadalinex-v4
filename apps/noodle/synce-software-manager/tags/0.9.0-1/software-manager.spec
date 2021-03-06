%define prefix   /usr
%define name     synce-software-manager
%define rel      1

Summary: SynCE: Software manager for GNOME 2.
Name: %{name}
Version: 0.9.0
Release: %{rel}
License: MIT LGPL
Group: Applications/Communications
Source: %{name}-%{version}.tar.gz
URL: http://synce.sourceforge.net/
Distribution: SynCE RPM packages
Vendor: The SynCE Project
#Packager: David Eriksson <twogood@users.sourceforge.net>
#Buildroot: %{_tmppath}/%{name}-%{version}-%{release}-root
Buildroot: %{_tmppath}/%{name}-%{version}-%{release}-root

Requires: gtk2 atk libgnomeui
Requires: synce >= 0.9.0
BuildRequires: synce-devel >= 0.9.0

%description
synce-software-manager is part of the SynCE project:

  http://synce.sourceforge.net/

Graphical tool for installing and removing software on a Windows CE device.

%prep
rm -rf $RPM_BUILD_ROOT
%setup

%build
%configure --with-libsynce=$RPM_BUILD_ROOT%{prefix} --with-librapi2=$RPM_BUILD_ROOT%{prefix}
make

%install
%makeinstall

%files
%defattr(-,root,root)
%{_bindir}/*
%{_datadir}/locale/ru/LC_MESSAGES/synce-software-manager.mo
%{_datadir}/locale/sv/LC_MESSAGES/synce-software-manager.mo
%{_datadir}/synce/synce_software_manager.glade
#%{prefix}/share/pixmaps/synce/synce-color-small.png
#%{prefix}/share/pixmaps/synce/synce-gray-small.png

