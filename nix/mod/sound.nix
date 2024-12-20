{ pkgs, ... }: {
    hardware = {
            pulseaudio.enable = false;
            bluetooth.enable = true;
        };
        services = {
            pipewire = {
                enable = true;
                alsa.enable = true;
                alsa.support32Bit = true;
                pulse.enable = true;
                jack.enable = true;
            };
        };
}