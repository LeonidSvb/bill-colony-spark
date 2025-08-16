# 🎯 Пример: NetSuite Контент-Стратегия

## Контекст
Реальный промпт, используемый для NetSuite консалтингового клиента (из Slack переписки Bill → Leo).

## Полный рабочий промпт

```
Strategic Analysis Required:

1. Content Audit First, identify:
Golden Nuggets: What are the most valuable, actionable insights shared?
Pain Points: Which NetSuite challenges resonated most with the audience?
Success Stories: Any case studies, metrics, or transformation stories mentioned?
Expert Quotes: Memorable statements from our CRO/COO that position thought leadership
Technical Deep Dives: Complex topics that warrant educational content

2. Content Recommendations Based on your analysis, recommend ONLY content pieces that add genuine value. For each piece, specify:
Format (LinkedIn post, carousel, PDF guide, infographic, quote graphic, etc.)
Core Message (the single takeaway)
Target Audience Segment (NetSuite admins, CFOs, operations managers, etc.)
Distribution Channel (LinkedIn, email, website resource center)
Expected Outcome (awareness, engagement, lead generation)

3. YouTube Video Description Create an SEO-optimized description that:
Hooks viewers with the most compelling insight
Includes natural keyword placement for NetSuite-related searches
Provides timestamped chapters based on topic shifts
Ends with a clear next step for viewers

4. Content Prioritization Rank your recommended assets by:
Impact Potential (High/Medium/Low)
Production Effort (Quick win vs. requires design)
Urgency (time-sensitive NetSuite updates vs. evergreen tips)

Guidelines:
Quality over Quantity: Only suggest content if it genuinely helps NetSuite users
Match Format to Message: Quick tips = text posts, complex processes = visual guides
Repurpose Smart: One great insight might become both a quote graphic AND the hook for a carousel
Stay Authentic: Maintain our CRO/COO's voice and expertise
Drive Action: Every piece should move readers toward optimization excellence

Output Format:
Present your recommendations as a strategic brief, not a task list. Explain WHY each piece matters and HOW it serves our audience's journey from NetSuite frustration to optimization mastery.
```

## Дополнения от Bill

### SEO/GEO оптимизация:
- Включить Reddit как канал репурпозинга
- Учитывать SEO для LLM (новый тренд)
- Создавать блог-посты для сайта на основе видео

### PDF создание:
- Агент должен знать брендинг (логотип, цвета)
- Создавать PDF с визуальными элементами
- Давать указания для дизайнера если не может сам

### Интеграция с Reddit:
```
From any of the content, the agent can review a Clay table for all Reddit topics we've pulled in. 
Then if it sees a thread on a topic that was touched on in the video or long form content, 
it can call it out and provide a detailed comment in the brand or person's voice 
that a human can take and reply with
```

## Результаты использования

**Созданные материалы** (от Bill):
- LinkedIn AI Carousel PDF
- NetSuite PDF guide 
- YouTube видео: "How to Use AI to Transform Your NetSuite"

**Отзыв**: "i dont think they're like the standard we should be going for though. we could definitely level up"

## Ключевые принципы

1. **Качество > Количество**: Рекомендовать только действительно ценные материалы
2. **Формат = Сообщение**: Быстрые советы = текстовые посты, сложные процессы = визуальные гайды  
3. **Умное репурпозинг**: Одна инсайт = несколько форматов
4. **Сохранение голоса**: Поддерживать экспертность CRO/COO
5. **Движение к действию**: Каждый материал должен продвигать к оптимизации

## Применение к другим нишам

Этот промпт можно адаптировать, заменив:
- "NetSuite" → [ваша индустрия]
- "CRO/COO" → [ваши эксперты]
- Аудитория сегменты → [ваша ICP]
- Специфичные боли → [боли вашей ниши]

## Связанные материалы
- `../Prompts/content_repurposing_agent.md`
- `../Templates/ice_scoring_system.md`
- `YouTube`: https://www.youtube.com/watch?v=tBGSurKRre4