# Beeper Linux installation script

This script will install Beeper on your Linux machine.

## Requirements

Make sure to have `wget` installed on your system.

## Installation

Run the following command in your terminal:

```bash
wget -O - https://raw.githubusercontent.com/tudny/beeper-install/main/install.sh | bash
```

This will download the installation script and run it.
Beeper will be installed in your home directory.
```
/home/<username>/.beeper
```
There will be a desktop entry created in `~/.local/share/applications`.

## Uninstallation
```
rm -rf ~/.beeper
rm ~/.local/share/applications/beeper.desktop
```
