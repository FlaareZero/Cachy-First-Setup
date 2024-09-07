#Questo script contiene i comandi che uso durante un primo setup di Linux sul mio Yoga 7 16ARP8. NON E' DA ESEGUIRE!!!

sudo usermod -a -G input matt
sudo pacman -S auto-epp flatpak && sudo systemctl enable --now auto-epp

#Se usate una debian based e non siete su Arch: https://github.com/zevv/bucklespring/issues/129
paru -S bucklespring-libinput-git
sudo chmod a+x /usr/bin/buckle
mkdir ~/.config/autostart 
mv buckle.sh.desktop ~/.config/autostart
mkdir ~/.scripts
mv avvia_buckle.sh ~/.scripts
sudo chmod +x ~/.scripts/avvia_buckle.sh

#setup degli script per fish
sudo cp disable_wacom.fish ~/.config/fish/functions/
sudo cp enable_wacom.fish ~/.config/fish/functions/

#copio la regola udev per il touchscreen
sudo cp 99-touchscreen.rules /etc/udev/rules.d/

#Installazione dei miei pacchetti da Flatpak
flatpak install vivaldi inkscape rawtherapee telegram xournalpp vesktop Missioncenter ytmdesktop bottles lutris BlackBox ExtensionManager
