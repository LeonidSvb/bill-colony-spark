# Clay Data Storage

Store Clay CSV exports and signal data here for analysis.

## Expected File Formats

### Clay Exports
- `clay-export-YYYY-MM-DD.csv` - Main Clay database export
- `reddit-signals-YYYY-MM-DD.csv` - Reddit-specific signal export
- `company-signals-YYYY-MM-DD.csv` - Company/lead signal export

### CSV Structure Expected
```
Thread_URL, Title, Subreddit, Posted_Date, Score, Comments, Content_Preview, Keywords, Client_Relevance
```

## Usage Instructions

1. Export data from Clay platform
2. Save CSV files with descriptive names including dates
3. Clay Signal Analyzer will automatically read latest files
4. Keep historical exports for trend analysis

## Data Privacy

- No personal information should be stored in plain text
- Reddit usernames should be anonymized
- Company data should follow privacy guidelines