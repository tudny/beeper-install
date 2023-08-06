
BEEPER_DOWNLOAD_LINK=https://download.beeper.com/linux/appImage/x64
BEEPER_DOWNLOAD_ICON="https://avatars.githubusercontent.com/u/74791520?s=200&v=4"
BEEPER_PATH="$HOME"/.beeper
BEEPER_EXEC="$BEEPER_PATH"/Beeper.AppImage
BEEPER_ICON="$BEEPER_PATH"/Beeper.png

# Check if directory exists
if [ -d "$BEEPER_PATH" ]; then
    echo "Beeper directory already exists."
else
    echo "Beeper directory does not exist. Creating..."
    mkdir -p "$BEEPER_PATH"
fi

# Check if Beeper is already downloaded
if [ -f "$BEEPER_EXEC" ]; then
    echo "Beeper is already downloaded."
else
    echo "Beeper is not downloaded. Downloading..."
    wget -O "$BEEPER_EXEC" "$BEEPER_DOWNLOAD_LINK"
    chmod +x "$BEEPER_EXEC"
fi

# Check if icon is already downloaded
if [ -f "$BEEPER_ICON" ]; then
    echo "Beeper icon is already downloaded."
else
    echo "Beeper icon is not downloaded. Downloading..."
    wget -O "$BEEPER_ICON" "$BEEPER_DOWNLOAD_ICON"
fi

# Create a desktop entry
echo "Creating a desktop entry..."
cat >"$HOME"/.local/share/applications/beeper.desktop <<EOL
[Desktop Entry]
Version=1.0
Name=Beeper
Exec="$BEEPER_EXEC"
Terminal=false
Type=Application
Icon="$BEEPER_ICON"
Comment=Beeper is a universal chat app.
EOL

echo "Done."
