# Hyprland Rice

A minimal Hyprland rice with floating Waybar modules, theme switcher, and dynamic colors.

## Dependencies

```sh
# Official repos
sudo pacman -S hyprland waybar kitty wofi matugen starship \
               cava brightnessctl pipewire wireplumber \
               ttf-jetbrains-mono-nerd python-pillow

# AUR
yay -S awww
```

## Installation

```sh
git clone git@github.com:metaanimates-code/RealRicer.git
cd RealRicer
./install.sh
```

Restart Hyprland or run `hyprctl reload`.

## Wallpapers

Wallpapers are in separate repos (too large for this repo):

- [Wallpapers](https://github.com/metaanimates-code/Wallpapers) — main collection (~55MB)
- [MonoWalls](https://github.com/metaanimates-code/MonoWalls) — monochrome theme set

Clone them to `~/Wallpapers/` and `~/Monochrome/` respectively.

## Usage

| Keybind | Action |
|---------|--------|
| `Super + X` | Open wallpaper picker |
| `Super + Shift + X` | Random wallpaper |
| `Super + Alt + T` | Theme switcher (wofi) |
| `Super + Shift + W` | Reload Waybar |

## Themes

- **Catppuccin Mocha** — default purple/pink theme
- **Monochrome** — grayscale theme, pulls wallpapers from `~/Monochrome/`
