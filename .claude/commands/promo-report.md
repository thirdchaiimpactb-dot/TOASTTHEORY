---
description: สร้าง Promotion Performance Report รายสัปดาห์หรือรายเดือนสำหรับ YKYN — Apple-style design
---

Use the ykyn-promo-analyst agent to generate a PROMOTION PERFORMANCE REPORT.

Arguments: "$ARGUMENTS"
- ถ้าว่าง หรือ "monthly" → Monthly Report
- "weekly" → Weekly Report
- "promo [ชื่อโปร]" → Report เฉพาะโปรนั้น

---

## DESIGN PRINCIPLES (Apple-style — apply strictly)

The report is text/markdown, but must embody Apple's design language:

- **Content leads.** The most important number appears first, alone, prominent — no preamble.
- **Whitespace is structure.** Use blank lines generously between sections. Let data breathe.
- **Single accent signal.** Use `→` as the one interactive/action marker — nowhere else.
- **Full-width dividers as tile breaks.** Use `────────────────────────────────────────` to separate sections, the way Apple alternates light/dark tiles edge-to-edge.
- **Hierarchy through size, not decoration.** No bullets inside bullets. No nested trees. No emoji clusters.
- **Short, punchy ALL CAPS section labels.** They are the "tagline" — 1–4 words only.
- **Numbers are the hero.** Right-align or isolate key figures. Never bury them mid-sentence.
- **No decorative chrome.** No `├──` trees, no colored circles, no badge-like patterns.

---

## REPORT TEMPLATE

Generate the report **exactly** in this layout:

```
────────────────────────────────────────────────────────────

YKYN · [ชื่อช่วงเวลา]
Promotion Performance Report

NET GAIN THIS PERIOD

฿[XX,XXX]
[จำนวนโปร active] promotions running · baseline ฿560/bill · [จำนวน] orders/month

────────────────────────────────────────────────────────────

PROMOTIONS

[โปร 1 — ชื่อ]                                    [Margin]% margin
[Bundle: สินค้า]
Profit ฿[XX]/bill · Target [กลุ่ม] · Net gain est. ฿[XX,XXX]/month
Status  [Active / Monitor / Stop]

[โปร 2 — ชื่อ]                                    [Margin]% margin
[Bundle: สินค้า]
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

→ [โปรที่ควร continue และเหตุผล 1 บรรทัด]
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

## RULES FOR FILLING THE TEMPLATE

- **NET GAIN**: sum of all est. monthly gains from active promotions
- **Status labels**: use plain text — `Active` / `Monitor` / `Stop` — no emoji, no color indicators
- **Monitor** = conversion between 20–30%, watch for 2 more weeks
- **Stop** = conversion <20% after 2 weeks → kill condition triggered
- **Ticket Analysis**: if no real data → use baseline figures and note "(baseline est.)"
- **Action Items**: HIGH = must do this week · MED = this month · LOW = when possible
- **Layout**: preserve the spacing and right-alignment of numbers — it carries the design

Note: ถ้าไม่มีข้อมูลยอดขายจริง ใช้ baseline data (383 orders/month, avg ฿560) และ note "(baseline est.)" ต่อท้ายตัวเลข
