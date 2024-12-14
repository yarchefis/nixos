{ config, pkgs, ...}:
{
 home.file.".torrc".text = 
 ''
 AutomapHostsOnResolve 1
 AutomapHostsSuffixes .onion,.exit
 BridgeRelay 0
 ClientTransportPlugin obfs4 exec ${pkgs.obfs4}/bin/lyrebird
 HTTPTunnelPort 40875
 SOCKSPort 9050
 UseBridges 1
 Bridge obfs4 83.229.15.147:65535 52887A9C249E8D13325946DEB4CFBF3BA5E342BB cert=iSY6xEjaX8dGKTPc2W/Z20HTufoQ8vHTdauoxtIPQT45pGZWs/5KKB6K2DuveC2kwcEpeg iat-mode=0
 Bridge obfs4 212.21.66.73:35401 C36F8D3C481910ED7A34F5ECEBE1C7C9A258F4A8 cert=9IygPQi2UKJ6pUjYTHl8ltg1cuPDvcsE9Os9TPVSioR0qmXU/0uSvD3rsm3jskV1nupJAg iat-mode=2
 '';


}