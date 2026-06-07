---
name: generate-promo-report
description: Use when asked to generate a performance report for active promotions
---

# Generate Promo Report

## Overview

"The most important number appears first, alone."

Follow Apple design principles: content leads, whitespace is structure, single accent signal (→), full-width dividers as section breaks, no decorative chrome.

## When to Use

Always use this skill when:
- User asks for a report, summary, or performance review of promotions
- Arguments: "monthly" (default), "weekly", or "promo [ชื่อ]" for single-promotion deep dive

## Report Structure

Generate the report using this exact layout — preserve spacing and divider lines:

```
────────────────────────────────────────────────────────────

YKYN · [ชื่อช่วงเวลา]
Promotion Performance Report

NET GAIN THIS PERIOD

฿[XX,XXX]
[จำนวน] promotions running · baseline ฿560/bill · [จำนวน] orders/month

────────────────────────────────────────────────────────────

PROMOTIONS

[โปร 1 — ชื่อ]                                    [Margin]% margin
[Bundle]
Profit ฿[XX]/bill · Target [กลุ่ม] · Net gain est. ฿[XX,XXX]/month
Status  [Active / Monitor / Stop]

[โปร 2 — ชื่อ]                                    [Margin]% margin
[Bundle]
Profit ฿[XX]/bill · [เงื่อนไข] · Net gain est. ฿[XX,XXX]/month
Status  [Active / Monitor / Stop]

[โปร 3 — ชื่อ]                                    [Margin]% margin
[เงื่อนไข]
Cost ฿[X]/bill · Break-even +฿[XX]/order · Net gain est. ฿[XX,XXX]/month
Status  [Active / Monitor / Stop]

[โปร 4 — ชื่อ]                                    [Margin]% margin
[เงื่อนไข]
Net/bill ฿[X]–[XX] · Low-FC items only · Net gain est. ฿[XX,XXX]/month
Status  [Active / Monitor / Stop]

────────────────────────────────────────────────────────────

TICKET ANALYSIS

Avg ticket         ฿[XXX]     [vs baseline ฿560: +/-฿XX]
฿400–600 bracket   [XX.X]%    primary upsell target
Peak 20:00–22:00   ฿[XXX]     [vs baseline ฿642: +/-฿XX]
Slow 16:00–18:00   ฿[XXX]     [vs baseline ฿304–394]

────────────────────────────────────────────────────────────

WHAT NOT TO DO

Buy 3 Get 1 Free เบียร์                guaranteed loss every transaction
Beer discount >10%                      margin collapses below threshold
Free beer from drink purchase           drink margin cannot absorb cost
Promotions 20:00–21:00                  peak hour needs no incentive
Price change before August 2026         3-month rule from May 2026

────────────────────────────────────────────────────────────

NEXT PERIOD

→ [โปรที่ควร continue]
→ [โปรที่ควรทดสอบใหม่ หรือ "-" ถ้าไม่มี]
→ Investigate cost data: DUNKEL · PATTAYA Beer · Rose Beer
→ Price adjustment eligible: August 2026

────────────────────────────────────────────────────────────

ACTION ITEMS

[HIGH]   [Action 1]                            [Deadline]
[MED]    [Action 2]                            [Deadline]
[LOW]    [Action 3]                            [Deadline]

────────────────────────────────────────────────────────────
```

## Status Labels

- `Active` = conversion ≥ 30%, no issues
- `Monitor` = conversion 20–30%, watch 2 more weeks
- `Stop` = conversion <20% after 2 weeks (kill condition triggered)

## Design Rules — Do Not Break

- NET GAIN number is isolated on its own line — never buried in a sentence
- Section headers are ALL CAPS, 1–3 words only
- `→` is the only action/interactive signal used — nowhere else
- No emoji, no tree branches (`├──`), no nested bullets
- Preserve the divider lines exactly as shown
- If no real data available: use baseline figures and append "(baseline est.)"

## Red Flags

- Burying the Net Gain number inside a paragraph
- Using emoji for status instead of plain text (Active/Monitor/Stop)
- Adding decorative borders or nested structure
- Mixing `→` with other symbols for action items
