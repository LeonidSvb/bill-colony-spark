# 🎬 YouTube Video Transcription Setup

## 📋 Option 1: yt-dlp (Recommended)

### Windows Installation:
```bash
# Via winget
winget install yt-dlp

# Or via pip
pip install yt-dlp

# Or download exe file
# https://github.com/yt-dlp/yt-dlp/releases
```

### Verify Installation:
```bash
yt-dlp --version
```

## 🎯 Core Commands

### 1. Extract Subtitles Only:
```bash
yt-dlp --write-subs --write-auto-subs --sub-lang en,ru --skip-download "https://youtu.be/VIDEO_ID"
```

### 2. Get Video Information:
```bash
yt-dlp --list-subs "https://youtu.be/VIDEO_ID"
```

### 3. Download Audio + Subtitles:
```bash
yt-dlp -x --audio-format mp3 --write-subs --write-auto-subs --sub-lang en,ru "https://youtu.be/VIDEO_ID"
```

## 🔧 Automation

### Transcription Script:
```bash
# scripts/transcribe-youtube.bat
@echo off
set VIDEO_URL=%1
if "%VIDEO_URL%"=="" (
    echo Usage: transcribe-youtube.bat "https://youtu.be/VIDEO_ID"
    exit /b 1
)

echo Extracting subtitles from: %VIDEO_URL%
yt-dlp --write-subs --write-auto-subs --sub-lang en,ru --skip-download "%VIDEO_URL%"

echo Subtitles saved to current directory
```

## 📋 Option 2: MCP Server (Advanced)

### 1. Create MCP Server with YouTube API:
```json
{
  "mcpServers": {
    "youtube-transcriber": {
      "command": "npx",
      "args": ["youtube-transcriber-mcp"],
      "env": {
        "YOUTUBE_API_KEY": "your-api-key"
      }
    }
  }
}
```

### 2. Use in Claude Code:
```javascript
// Call via MCP
const transcript = await youtube.getTranscript(videoId);
```

## 🆘 Troubleshooting

### Issue: "yt-dlp: command not found"
**Solution:** Install yt-dlp following instructions above

### Issue: No Subtitles Available
**Solution:** Use `--write-auto-subs` for automatic subtitles

### Issue: Download Error
**Solution:** Update yt-dlp: `pip install -U yt-dlp`

## 📝 Usage Example

```bash
# Extract subtitles from Bill's video
yt-dlp --write-subs --write-auto-subs --sub-lang en --skip-download "https://youtu.be/elZOUvLlKDY"

# Result: elZOUvLlKDY.en.vtt file with subtitles
```

---

*🤖 Generated with [Claude Code](https://claude.ai/code)*