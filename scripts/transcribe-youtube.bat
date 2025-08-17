@echo off
setlocal enabledelayedexpansion

REM YouTube Transcription Script for Bill Colony Spark
REM Usage: transcribe-youtube.bat "https://youtu.be/VIDEO_ID"

set VIDEO_URL=%1
if "%VIDEO_URL%"=="" (
    echo.
    echo 🎬 YouTube Transcription Tool
    echo ============================
    echo Usage: transcribe-youtube.bat "https://youtu.be/VIDEO_ID"
    echo.
    echo Example:
    echo transcribe-youtube.bat "https://youtu.be/elZOUvLlKDY"
    echo.
    pause
    exit /b 1
)

echo.
echo 🎯 Starting transcription for: %VIDEO_URL%
echo ==========================================

REM Check if yt-dlp is installed
yt-dlp --version >nul 2>&1
if errorlevel 1 (
    echo ❌ yt-dlp not found!
    echo.
    echo 📥 Please install yt-dlp first:
    echo 1. Download from: https://github.com/yt-dlp/yt-dlp/releases
    echo 2. Or install via: winget install yt-dlp
    echo 3. Or install via: pip install yt-dlp
    echo.
    pause
    exit /b 1
)

echo ✅ yt-dlp found, proceeding...

REM Create transcripts directory if it doesn't exist
if not exist "transcripts" mkdir transcripts
cd transcripts

echo.
echo 📝 Extracting subtitles...
yt-dlp --write-subs --write-auto-subs --sub-lang en,ru --skip-download "%VIDEO_URL%"

if errorlevel 1 (
    echo ❌ Failed to extract subtitles
    echo.
    echo 🔍 Checking available subtitles...
    yt-dlp --list-subs "%VIDEO_URL%"
    pause
    exit /b 1
)

echo.
echo ✅ Transcription complete!
echo 📁 Files saved in: %cd%
echo.

REM List created files
echo 📄 Created files:
dir /b *.vtt *.srt 2>nul

echo.
echo 🎉 Ready for Claude analysis!
pause