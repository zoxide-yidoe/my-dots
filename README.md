## Dependencies & Installation

First, install the required system utilities, terminal, and X11 development headers using `xbps-install`:

```bash
# Install core packages and build tools
doas xbps-install -S alacritty dunst base-devel make

# Install X11, Font rendering libraries, and Fonts
doas xbps-install -S libX11-devel libXrender-devel libXinerama-devel libXft-devel freetype-devel fontconfig-devel
```

## Building dwm and dmenu

Once the packages above are installed, navigate to your cloned source directories and compile:

```bash
# Build and install dwm
cd ~/my-dots/src/dwm
make
doas make install

# Build and install dmenu
cd ~/my-dots/src/dmenu
make
doas make install
```



using vxwm - https://github.com/wh1tepearll/vxwm,

using picom - https://github.com/yshui/picom,

using for cursor - https://github.com/ful1e5/Bibata_Cursor (modern-classic.tar.xz),

using for gtk - https://github.com/4rtzel/Gruvbox-Dark-Yellow
