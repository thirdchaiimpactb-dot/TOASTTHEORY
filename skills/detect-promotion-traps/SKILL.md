---
name: detect-promotion-traps
description: Use when auditing a promotion for the 6 common traps that cause margin erosion
---

# Detect Promotion Traps

## Overview

"A promotion that passes the math can still fail the traps."

Run all 6 checks in sequence. One failure is enough to require redesign.

## When to Use

Always use this skill when:
- Step 4 of `analyze-promotion` is reached
- User asks "มีกับดักไหม?", "โปรนี้มีปัญหาอะไร?"
- Any promotion involves free items, time conditions, or price changes

## The 6 Traps

**Trap 1 — CONDITION TOO LOW**
- Fail if: >80% of customers already meet the threshold
- Data: avg ticket ฿560 · customers with ฿400+ bill = 67.8%
- Example fail: "spend ฿200 to get free water" — 88% qualify automatically → giving away margin

**Trap 2 — WRONG TIMING**
- Fail if: promotion runs during 20:00–21:00 peak
- Data: 85 orders/hr, avg ฿642 — customers come regardless
- Example fail: happy hour 20:00–21:00 = subsidizing behavior that costs nothing to get

**Trap 3 — FREE ITEM TOO EXPENSIVE**
- Fail if: free item cost cannot be absorbed by the margin generated
- Safe: น้ำเปล่า ฿3.75 · แคบหมู ฿15 · ข้าวเหนียว ฿5
- Risky: เบียร์ ฿52–57 (requires food margin >40% to absorb)
- Fail example: free beer with drink-only purchase — drink margin 22% cannot absorb ฿52

**Trap 4 — HIGH FC% FOOD IN BUNDLE**
- Fail if: any bundle item has FC% > 35%
- Immediate disqualifiers: ปีกไก่ทอด (58.9%), ใส้ทอด (~56%), ต้มขมเนื้อ (54.9%)
- Fail example: "order ปีกไก่ทอด + เบียร์ฟรี" — combined negative margin

**Trap 5 — PRICE CHANGE TOO RECENT**
- Fail if: promotion requires a price increase before August 2026
- Last adjustment: May 2026 · 3-month rule: next eligible August 2026
- Applies to: any promotion that works only by first raising a price

**Trap 6 — MISSING COST DATA**
- Fail if: any item in the promotion has unknown cost
- Missing: DUNKEL, PATTAYA Beer, Rose Beer
- Rule: never analyze or build a promotion with unverified cost data

## Output Format

```
TRAP AUDIT

Trap 1 (Condition)  ✅ PASS / ❌ FAIL — [เหตุผล]
Trap 2 (Timing)     ✅ PASS / ❌ FAIL — [เหตุผล]
Trap 3 (Free item)  ✅ PASS / ❌ FAIL — [เหตุผล]
Trap 4 (FC%)        ✅ PASS / ❌ FAIL — [เหตุผล]
Trap 5 (Price rule) ✅ PASS / ❌ FAIL — [เหตุผล]
Trap 6 (Data)       ✅ PASS / ❌ FAIL — [เหตุผล]

OVERALL: 🟢 CLEAR / 🟡 WARNING (X traps) / 🔴 FAIL (redesign required)

ถ้า FAIL → แนะนำวิธีแก้ไขสำหรับทุก trap ที่ fail
```

## Red Flags

- Marking a trap as PASS without checking the data
- Reporting overall CLEAR when any trap is FAIL
- Skipping traps because "it seems fine"
