echo "===== DOWNLOADING SYSTEM UPDATES ====="
sudo apt update $1
sudo apt upgrade $1
echo

echo "===== DOWNLOADING OS UPDATES ====="
sudo apt dist-upgrade $1
echo

echo "===== FIXING BROKEN PACKAGES ====="
sudo apt --fix-broken install $1
echo

echo "===== PURGING UNUSED PACKAGES ====="
sudo apt autoremove $1

echo "===== UPDATING FLATPAK PACKAGES ====="
sudo flatpak update

echo "===== DONE! ====="
