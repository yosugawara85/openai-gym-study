# Enable Japanese settings

# https://kledgeb.blogspot.com/2016/05/ubuntu-1604-48-ubuntu-japanese-team.html

wget -q https://www.ubuntulinux.jp/ubuntu-ja-archive-keyring.gpg -O- | apt-key add -
wget -q https://www.ubuntulinux.jp/ubuntu-jp-ppa-keyring.gpg -O- | apt-key add -
wget https://www.ubuntulinux.jp/sources.list.d/xenial.list -O /etc/apt/sources.list.d/ubuntu-ja.list

apt -y update
apt -y upgrade

apt-get install ubuntu-defaults-ja
#update-locale LANG=ja_JP.UTF-8 LANGUAGE=Åhja_JP:jaÅh
#source /etc/default/locale

timedatectl set-timezone Asia/Tokyo
localectl set-locale LANG=ja_JP.utf8

# Install Desktop

apt-get install ubuntu-desktop
