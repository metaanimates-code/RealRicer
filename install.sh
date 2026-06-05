#!/usr/bin/env bash
# Restore Hyprland rice from backup
# Run from: ~/rice-backup/
# Or: ./install.sh

set -e

BACKUP_DIR="$(cd "$(dirname "$0")" && pwd)"
CONFIG_DIR="$HOME/.config"

echo "Restoring Hyprland rice..."

# Hyprland configs
cp "$BACKUP_DIR/config/hypr/hyprland.conf" "$CONFIG_DIR/hypr/"
cp "$BACKUP_DIR/config/hypr/hyprlock.conf" "$CONFIG_DIR/hypr/"
cp "$BACKUP_DIR/config/hypr/hypridle.conf" "$CONFIG_DIR/hypr/"

# Waybar
mkdir -p "$CONFIG_DIR/waybar/modules" "$CONFIG_DIR/waybar/scripts"
cp "$BACKUP_DIR/config/waybar/config.jsonc" "$CONFIG_DIR/waybar/config"
cp "$BACKUP_DIR/config/waybar/style.css" "$CONFIG_DIR/waybar/"
cp "$BACKUP_DIR/config/waybar/colors.css" "$CONFIG_DIR/waybar/"
cp "$BACKUP_DIR/config/waybar/grandfather.css" "$CONFIG_DIR/waybar/" 2>/dev/null || true
cp "$BACKUP_DIR/config/waybar/mocha.css" "$CONFIG_DIR/waybar/" 2>/dev/null || true
cp "$BACKUP_DIR/config/waybar/modules/"* "$CONFIG_DIR/waybar/modules/" 2>/dev/null || true
cp "$BACKUP_DIR/config/waybar/scripts/"* "$CONFIG_DIR/waybar/scripts/" 2>/dev/null || true

# Kitty
mkdir -p "$CONFIG_DIR/kitty"
cp "$BACKUP_DIR/config/kitty/kitty.conf" "$CONFIG_DIR/kitty/"
cp "$BACKUP_DIR/config/kitty/current-theme.conf" "$CONFIG_DIR/kitty/"

# Wofi
cp "$BACKUP_DIR/config/wofi/config" "$CONFIG_DIR/wofi/"
cp "$BACKUP_DIR/config/wofi/style.css" "$CONFIG_DIR/wofi/"
cp "$BACKUP_DIR/config/wofi/colors.css" "$CONFIG_DIR/wofi/"

# Matugen
mkdir -p "$CONFIG_DIR/matugen/templates"
cp "$BACKUP_DIR/config/matugen/config.toml" "$CONFIG_DIR/matugen/"
cp "$BACKUP_DIR/config/matugen/templates/"* "$CONFIG_DIR/matugen/templates/"

# Themes
cp -r "$BACKUP_DIR/config/themes/"* "$CONFIG_DIR/themes/"

# Scripts
mkdir -p "$HOME/.local/bin"
cp "$BACKUP_DIR/bin/"* "$HOME/.local/bin/"
chmod +x "$HOME/.local/bin/"*

echo "Done! Run 'hyprctl reload' to apply changes."
