# Funzione per disabilitare i dispositivi Wacom
function disable_wacom
    # Rinomina il file 99-touchscreen.rules per renderlo attivo
    if test -e /etc/udev/rules.d/99-touchscreen.rules.disabled
        sudo mv /etc/udev/rules.d/99-touchscreen.rules.disabled /etc/udev/rules.d/99-touchscreen.rules
        echo "Regola touchscreen riattivata."
    end

    # Ricarica le regole udev
    sudo udevadm control --reload-rules
    sudo udevadm trigger
    echo "Dispositivi Wacom disabilitati. Vuoi terminare la sessione? (si/no)"

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
