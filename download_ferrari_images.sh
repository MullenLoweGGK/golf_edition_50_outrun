#!/bin/bash
# Script to download Ferrari car images
# Place this in the project root and run: bash download_ferrari_images.sh

BASE_URL="https://d9n2q0aon7p4b.cloudfront.net/images/ferrari"
OUTPUT_DIR="public/images/ferrari"

# Create directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# List of all Ferrari image files
IMAGES=(
    "left.png"
    "right.png"
    "straight.png"
    "up.png"
    "upleft.png"
    "upright.png"
    "left-brake.png"
    "right-brake.png"
    "straight-brake.png"
    "up-brake.png"
    "upleft-brake.png"
    "upright-brake.png"
)

echo "Downloading Ferrari images..."
for img in "${IMAGES[@]}"; do
    echo "Downloading $img..."
    curl -L -f -o "$OUTPUT_DIR/$img" "$BASE_URL/$img" 2>/dev/null
    if [ $? -eq 0 ]; then
        echo "✓ Successfully downloaded $img"
    else
        echo "✗ Failed to download $img (CDN may be down)"
    fi
done

echo ""
echo "Done! Check $OUTPUT_DIR for downloaded images."
