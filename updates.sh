echo "===== DOWNLOADING SYSTEM UPDATES ====="
apt update $1
apt upgrade $1
echo

echo "===== DOWNLOADING OS UPDATES ====="
apt dist-upgrade $1
echo

echo "===== FIXING BROKEN PACKAGES ====="
apt-get clean
apt --fix-broken install $1
echo

echo "===== PURGING UNUSED PACKAGES ====="
apt autoremove $1

echo "===== UPDATING FLATPAK PACKAGES ====="
flatpak update

echo "===== DONE! ====="
