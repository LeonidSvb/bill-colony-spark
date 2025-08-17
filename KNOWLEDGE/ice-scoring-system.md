# 📊 ICE Scoring System for Content Prioritization

## What is ICE scoring?

ICE (Impact, Confidence, Ease) - is an evaluation system for prioritizing content ideas, proposed by Leo instead of subjective "High/Medium/Low" ratings.

## Evaluation Parameters

### Impact - 0-10 points
- **Definition**: How much content moves buyer toward action
- **Bonus**: +2 points if it's BOFU content (Bottom of Funnel - addresses objections/offers)

**Rating scale:**
- **9-10**: Direct impact on purchase decision
- **7-8**: Significantly affects brand perception
- **5-6**: Medium influence on awareness
- **3-4**: Weak influence
- **1-2**: Minimal impact

### Confidence - 0-10 points
- **Definition**: Can we substantiate claims in the content

**Rating scale:**
- **7-9**: Have clear examples and data
- **4-6**: Based on opinion or experience
- **1-3**: Questionable claims

### Ease - 0-10 points
- **Definition**: How much effort is required for creation

**Rating scale:**
- **8-10**: Ready for publishing with minimal edits
- **5-7**: Requires design or additional work
- **2-4**: Requires serious research
- **1**: Very complex task

## Calculation Formula

```
Total Score = Impact + Confidence + Ease
Maximum: 32 points (with BOFU bonus)
Minimum: 3 points
```

## Usage Example

| Content Idea | Impact | Confidence | Ease | Total | Priority |
|---------------|--------|------------|------|-------|-----------|
| PDF guide "NetSuite Security Best Practices" | 8+2 | 9 | 6 | 25 | High |
| LinkedIn post with client case study | 7 | 8 | 9 | 24 | High |
| Industry trends infographic | 5 | 6 | 4 | 15 | Medium |
| Expert interview video series | 9 | 7 | 3 | 19 | Medium |

## Workflow Integration

### In AI prompts:
```
"For each content opportunity include:
- ICE evaluation (Impact 0-10 +2 BOFU, Confidence 0-10, Ease 0-10)
- 1-2 lines of justification

Sort by total ICE score."
```

### In team work:
1. Each team member evaluates ideas by ICE
2. Average the scores
3. Prioritize by total score
4. Start with highest scores

## Advantages over High/Medium/Low System

✅ **Objectivity**: Numerical criteria instead of subjective ratings  
✅ **Granularity**: 30+ levels instead of 3  
✅ **Transparency**: Clear why one idea is prioritized over another  
✅ **Consistency**: Team uses the same criteria  

## Related Materials
- `../Prompts/content_repurposing_agent.md`
- `../Workflows/content_prioritization.md`