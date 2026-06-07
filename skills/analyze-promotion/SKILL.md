---
name: analyze-promotion
description: Use when asked to evaluate, analyze, or assess whether a promotion is worth running
---

# Analyze Promotion

## Overview

"Every promotion must survive the Conservative scenario."

Run the full 6-step framework. Do not skip steps. Do not give a verdict before completing the Net Profit calculation.

## When to Use

Always use this skill when:
- User asks "โปรนี้คุ้มไหม?", "ควรทำโปรนี้ไหม?", or describes a promotion idea
- User asks to evaluate an existing promotion

Skip if user only wants cost data → use `lookup-cost-data` instead.

## The 6-Step Framework

**STEP 1 — Identify Objective**
Pick exactly one:
- A) เพิ่ม ticket size (target: ฿400–600 bracket)
- B) เพิ่ม dwell time หลัง 21:00
- C) ดึง traffic ช่วง 16:00–18:00
- D) Push high-margin items
- E) เพิ่ม repeat visits

**STEP 2 — Calculate Net Profit per bill**
- Revenue change = (promotion price or uplift) − (cost of free item or discount given)
- Net/bill = Revenue change − any incremental food cost

**STEP 3 — Run 3 Scenarios**

| Scenario | Conversion | Requirement |
|----------|------------|-------------|
| Conservative | 20% | **Must be positive — if negative, stop here** |
| Base case | 40% | Must hit target profit |
| Optimistic | 60% | Upside |

Formula: Net Gain/month = (Net/bill) × (conversion%) × (affected orders/month)

**STEP 4 — Check 6 Traps**
Read `skills/detect-promotion-traps/SKILL.md` and run all 6 checks.

**STEP 5 — Compare Alternatives**
Always present ≥ 2 alternatives ranked by Net Gain/month.
Recommend highest Net Gain at lowest staff effort.

**STEP 6 — Define KPIs**
- Baseline: current avg ticket or order count
- Target: metric after 2 weeks
- Kill condition: conversion <20% after 2 weeks → stop

## Output Format

```
VERDICT: แนะนำ / ไม่แนะนำ — [1 บรรทัด]

NET PROFIT CALCULATION
| Scenario     | Conversion | Net/bill | Net Gain/month |
|--------------|------------|----------|----------------|
| Conservative | 20%        | ฿XX      | ฿XX,XXX        |
| Base case    | 40%        | ฿XX      | ฿XX,XXX        |
| Optimistic   | 60%        | ฿XX      | ฿XX,XXX        |

กับดักที่พบ: [รายการ หรือ "ไม่พบ"]

ทางเลือก:
1. [ทางเลือก A] — Net Gain ฿XX,XXX/month
2. [ทางเลือก B] — Net Gain ฿XX,XXX/month

Action items:
→ [สิ่งที่ต้องทำ] · Deadline: [วัน]
→ Kill condition: conversion <20% ใน 2 สัปดาห์ → หยุด
```

## Red Flags — Stop and Reconsider

- Conservative scenario is net negative
- Free item cost > margin generated (beer ฿52–57 with drink-only condition)
- Promotion runs during 20:00–21:00 peak
- Any item with missing cost data included in bundle
- Price change required before August 2026

## Verification Before Completing

- [ ] All 6 steps completed in order
- [ ] Conservative scenario is positive
- [ ] At least 2 alternatives presented
- [ ] Kill condition defined
- [ ] No banned promotion recommended
