# GNOME 40+ low RAM notification

A simple bash script that sends a notification to gnome every time you're running low on RAM.

## Why did you make this?
TL;DR I'm too lazy to add a swap partition.

I've been working for a while on a laptop with 8Gb of RAM. While using PyCharm I realized that the small warning it sends on high RAM consumption is really useful to prevent getting stuck on a PC the must be halted. That's why I've taken this opportunity to learn how to write scripts in bash by replicating the same behaviour with GNOME.


## How to use

### Give the script execution permission
```bash
chmod +x /script/path.sh
```

### Start systemd service
```bash
sudo systemctl start low-ram-check
```

### Autostart at boot
```bash
sudo systemctl enable low-ram-check
```

### Disable autostart at boot
```bash
sudo systemctl enable low-ram-check
```

## Compatibility
The script has been tested on Arch Linux using systemd and GNOME.
Technically it should be compatible with basically any distro that supports the `notify-send` command

## Contribute
Feel free to make a pull request if you can improve my script! I'm not a bash expert but I'm always open to suggestions and improvements.
