
# akjumla_infra
akjumla Infra repository

# HW5
## Connecting to someinternalhost by one command
ssh -J username@bastion username@someinternalhost

## Create .ssh/config for one-command connection: ssh someinternalhost
    Host 10.128.0.9
        HostName someinternalhost
        User appuser

        ProxyJump appuser@51.250.82.95

bastion_IP = 51.250.82.95 someinternalhost_IP = 10.128.0.9
