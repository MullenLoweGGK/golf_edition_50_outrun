# How to Run the Game Locally

## Step 1: Start the Server

**IMPORTANT**: Make sure you're in the project root directory!

Open a terminal and navigate to the project:
```bash
cd "/Users/viktorbalaz/IT Projekty/california-outrun-style"
```

Then start the server:
```bash
python3 -m http.server 8000
```

Or if you have Python 2:
```bash
python -m SimpleHTTPServer 8000
```

The server will start and you'll see output like:
```
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
```

## Step 2: Open in Browser

Open your browser and go to:
```
http://localhost:8000
```

**Note**: If you see the URL as `http://localhost:8000/california-outrun-style/`, that's also fine - the relative paths will work correctly.

## Step 3: Download Audio (Optional)

The audio file needs to be downloaded manually since the CDN is not accessible:

### Option A: Using the script
```bash
bash download_audio.sh
```

### Option B: Manual download
1. Visit https://www.nathaniel.ai/outrun in your browser
2. Open DevTools (F12 or Right-click → Inspect)
3. Go to the **Network** tab
4. Reload the page (Cmd+R or F5)
5. Filter by "mp3" or search for "Fury_Weekend"
6. Right-click on the audio file → **Save As** or **Open in New Tab**
7. Save it to: `public/audio/Fury_Weekend_12_To_Midnight.mp3`

## Troubleshooting

If images don't load:
- Make sure all image files are in `public/images/` directory
- Check browser console (F12) for 404 errors
- Verify the server is running from the project root directory
