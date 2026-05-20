#!/bin/bash
# Script to download audio file
# Run this script to download the audio file manually

AUDIO_URL="https://d9n2q0aon7p4b.cloudfront.net/audio/Fury_Weekend_12_To_Midnight.mp3"
OUTPUT_DIR="public/audio"
OUTPUT_FILE="$OUTPUT_DIR/Fury_Weekend_12_To_Midnight.mp3"

mkdir -p "$OUTPUT_DIR"

echo "Attempting to download audio file..."
echo "URL: $AUDIO_URL"
echo "Output: $OUTPUT_FILE"
echo ""

curl -L -o "$OUTPUT_FILE" "$AUDIO_URL"

if [ $? -eq 0 ] && [ -f "$OUTPUT_FILE" ]; then
    echo "✓ Successfully downloaded audio file!"
    ls -lh "$OUTPUT_FILE"
else
    echo "✗ Failed to download from CDN"
    echo ""
    echo "Alternative: Download manually from:"
    echo "1. Visit https://www.nathaniel.ai/outrun in your browser"
    echo "2. Open DevTools (F12) → Network tab"
    echo "3. Reload the page and filter by 'mp3'"
    echo "4. Right-click the audio file → Save As"
    echo "5. Save to: $OUTPUT_FILE"
fi
