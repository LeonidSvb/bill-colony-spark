# 🎬 Настройка транскрибации YouTube видео

## 📋 Вариант 1: yt-dlp (Рекомендуется)

### Windows:
```bash
# Через winget
winget install yt-dlp

# Или через pip
pip install yt-dlp

# Или скачать exe файл
# https://github.com/yt-dlp/yt-dlp/releases
```

### Проверка установки:
```bash
yt-dlp --version
```

## 🎯 Основные команды

### 1. Извлечь только субтитры:
```bash
yt-dlp --write-subs --write-auto-subs --sub-lang en,ru --skip-download "https://youtu.be/VIDEO_ID"
```

### 2. Получить информацию о видео:
```bash
yt-dlp --list-subs "https://youtu.be/VIDEO_ID"
```

### 3. Скачать аудио + субтитры:
```bash
yt-dlp -x --audio-format mp3 --write-subs --write-auto-subs --sub-lang en,ru "https://youtu.be/VIDEO_ID"
```

## 🔧 Автоматизация

### Скрипт для транскрибации:
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

## 📋 Вариант 2: MCP сервер (Для продвинутых)

### 1. Создать MCP сервер с YouTube API:
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

### 2. Использовать в Claude Code:
```javascript
// Вызов через MCP
const transcript = await youtube.getTranscript(videoId);
```

## 🆘 Проблемы и решения

### Проблема: "yt-dlp: command not found"
**Решение:** Установить yt-dlp по инструкции выше

### Проблема: Нет субтитров
**Решение:** Использовать `--write-auto-subs` для автоматических субтитров

### Проблема: Ошибка загрузки
**Решение:** Обновить yt-dlp: `pip install -U yt-dlp`

## 📝 Пример использования

```bash
# Извлечь субтитры из видео Билла
yt-dlp --write-subs --write-auto-subs --sub-lang en --skip-download "https://youtu.be/elZOUvLlKDY"

# Результат: файл elZOUvLlKDY.en.vtt с субтитрами
```

---

*🤖 Generated with [Claude Code](https://claude.ai/code)*