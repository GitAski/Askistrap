# Askistrap by Aski
writed on BASH
# Що це таке
Це мій bootstrap який може багато всього наприклад спростити роботу з debootstrap
# Встроєний debootstrap
Замість того щоб писати debootstrap --arch=amd64 noble directory https://archive.ubuntu.com/ubuntu можна написати askistrap dbs noble directory ubuntu
встроєний debootstrap працює за принципом CODENAME TARGET DISTRO/MIRROR тобто noble це кодова назва TARGET директорія в яку качається дистрибутив а DISTRO/MIRROR це дзеркало щ якого debootstrap викачує базовий rootfs
# Встановлення через Makefile
щоб встановити/оновити/видалити треба написати make та команду зараз доступно make install, make uninstall та make update який встановлює Askistrap в /opt/Askistrap та робить симлінк /opt/Askistrap/askistrap.sh в /bin під назвою askistrap
# Встановлення
```git clone https://github.com/GitAski/Askistrap.git```
```cd Askistrap```
```make install```