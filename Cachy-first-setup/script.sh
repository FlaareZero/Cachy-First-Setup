sudo pacman -S auto-epp flatpak vivaldi && sudo systemctl enable --now auto-epp
paru -S bucklespring-libinput-git
sudo chmod a+x /usr/bin/buckle
mkdir ~/.config/autostart 
mv buckle.sh.desktop ~/.config/autostart
mkdir ~/.scripts
mv avvia_buckle.sh ~/.scripts
flatpak install inkscape rawtherapee telegram xournalpp vesktop io.missioncenter.Missioncenter app.ytmusicdesktop.ytmdesktop bottles lutris com.raggesilver.BlackBox com.mattjakeman.ExtensionManager
