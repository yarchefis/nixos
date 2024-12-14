{ pkgs, config, libs, ... }:

{

   hardware.graphics = {
     enable = true;
     enable32Bit = true;
   };

  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    forceFullCompositionPipeline = true;
    modesetting.enable = true;
    powerManagement.enable = true;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
	};

}
