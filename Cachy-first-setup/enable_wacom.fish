# Funzione per abilitare i dispositivi Wacom
function enable_wacom
    # Rinomina il file 99-touchscreen.rules per disattivarlo
    if test -e /etc/udev/rules.d/99-touchscreen.rules
        sudo mv /etc/udev/rules.d/99-touchscreen.rules /etc/udev/rules.d/99-touchscreen.rules.disabled
        echo "Regola touchscreen disattivata."
    end

    # Ricarica le regole udev
    sudo udevadm control --reload-rules
    sudo udevadm trigger
    echo "Dispositivi Wacom abilitati. Vuoi terminare la sessione? (si/no)"
    
    #lettura input utente

    read user_input

    if test "$user_input" = "sì" -o "$user_input" = "si"
        echo "Terminazione della sessione in corso..."
        # Termina la sessione
        gnome-session-quit --logout --no-prompt
    else
        echo "Modifiche applicate, ma sessione non terminata."
    end

end
