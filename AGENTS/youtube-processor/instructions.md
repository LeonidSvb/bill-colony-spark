# 📋 YouTube Processor - Detailed Instructions

## 🚀 Quick Start

### Simple Usage
```
Process this YouTube video: https://youtu.be/VIDEO_ID
```

### Expected Result
```
AGENTS/youtube-processor/generated/
└── video-title-in-kebab-case/
    ├── transcript.vtt
    ├── analysis.md  
    └── insights.md
```

---

## 🔧 Technical Process

### Step 1: Video Info Extraction
1. Extract video title from YouTube URL
2. Convert title to kebab-case (lowercase, hyphens)
3. Create folder: `generated/[kebab-case-title]/`

### Step 2: Transcription
```bash
# Use existing yt-dlp setup
./yt-dlp.exe --write-subs --write-auto-subs --sub-lang en --skip-download "[URL]" -o "AGENTS/youtube-processor/generated/[folder-name]/transcript.%(ext)s"
```

### Step 3: Analysis Creation
**File:** `analysis.md`
**Header Format:**
```markdown
# [Original Title]
**URL:** [YouTube URL] | **Date:** [Today] | **Duration:** [XX min]
```

### Step 4: Insights Generation
**File:** `insights.md`
**Focus Areas:**
- Strategic implications
- Competitive advantages  
- Actionable next steps
- Implementation priorities

---

## 🎯 Usage Instructions

**Input:** YouTube URL  
**Command:** "Process this YouTube video: [URL]"  
**Output:** Complete folder structure with transcript, analysis, and insights

---

*Ready to process unlimited YouTube content for Bill's project! 🎬*