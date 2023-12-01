Summary: A script to count files in /etc
Name: count_files
Version:1.0
Release: 1%{?dist}
License: MIT


%description
This script counts files in /etc directory 

%prep

%build

%install
mkdir -p %{buildroot}/usr/bin
install -m 755 count_files.sh %{buildroot}/usr/bin/count_files.sh

%files
%defattr(-,root,root,-)
/usr/bin/count_files.sh

%changelog
* Tue Nov 21 2023 Sofia <sofiaglusak@gmail.com> 1.0-1
- Initial package
