sudo usermod -a -G input matt
sudo pacman -S auto-epp flatpak vivaldi && sudo systemctl enable --now auto-epp
paru -S bucklespring-libinput-git
sudo chmod a+x /usr/bin/buckle
mkdir ~/.config/autostart 
mv buckle.sh.desktop ~/.config/autostart
mkdir ~/.scripts
mv avvia_buckle.sh ~/.scripts
sudo chmod +x ~/.scripts/avvia_buckle.sh
flatpak install inkscape rawtherapee telegram xournalpp vesktop Missioncenter ytmdesktop bottles lutris BlackBox ExtensionManager
