## Dependencies & Installation

First, install the required system utilities, terminal, and X11 development headers using `xbps-install`:

```bash
# Install core packages and build tools
sudo xbps-install -S doas xbps-install alacritty dunst base-devel make

# Install X11, Font rendering libraries, and Fonts
sudo xbps-install -S libX11-devel libXrender-devel libXinerama-devel libXft-devel freetype-devel fontconfig-devel font-awesome dejavu-fonts-ttf
```

## Building dwm and dmenu

Once the packages above are installed, navigate to your cloned source directories and compile:

```bash
# Build and install dwm
cd ~/my-dots/src/dwm
sudo make clean install

# Build and install dmenu
cd ~/my-dots/src/dmenu
sudo make clean install
```
