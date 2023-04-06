from pyinfra import host, local, state
from pyinfra.operations import server

from pyinfra.facts.server import Hostname, LinuxName
from pathlib import Path

hostname = host.get_fact(Hostname)
distro = host.get_fact(LinuxName)

if distro != "NixOS":
    exit(0)

is_local = False
if host.executor.__name__ == "pyinfra.connectors.local":
    is_local = True
assert is_local or host.executor.__name__ == "pyinfra.connectors.ssh", "nix-copy-closure requires ssh"

symlink_path = f"/tmp/nixos-{hostname}"

local.shell(f"nix build -L -v  -o {symlink_path} .#nixosConfigurations.{hostname}.config.system.build.toplevel")

if not is_local:
    local.shell(f"nix-copy-closure --to {host.name} {symlink_path}/")

config_path = Path(symlink_path).resolve()

switch_cmd = "boot"
if host.data.get('nixos-switch'):
    switch_cmd = "switch"

server.shell(
    _sudo=True,
    name="Switching configuration" if switch_cmd == "switch" else "Setting up configuration to be applied in the next boot",
    commands = [
        f"{str(config_path)}/bin/switch-to-configuration {switch_cmd}"            
    ]
)


print(hostname, distro)
