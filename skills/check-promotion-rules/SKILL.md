---
name: check-promotion-rules
description: Use when asked whether a promotion is allowed, banned, or already approved
---

# Check Promotion Rules

## Overview

"Check the banned list first, always."

Return a clear STATUS before any further analysis.

## When to Use

Always use this skill when:
- User asks "โปรนี้ทำได้ไหม?", "มีโปรอะไรอยู่แล้ว?", or "โปรนี้ห้ามไหม?"
- Before running `analyze-promotion` on anything involving beer discounts or free beer

## Banned Promotions — NEVER Recommend

| Promotion | Why banned |
|-----------|------------|
| Buy 3 Get 1 Free เบียร์ทุกยี่ห้อ | สิงห์: ขาดทุน ฿10.32/bill · ลีโอ: ขาดทุน ฿13/bill |
| Beer discount > 10% | Margin 22–27% ดูดซับไม่ไหว |
| Free beer with drink-only purchase | Drink margin 19–27% ไม่พอดูดซับ beer cost ฿52–57 |
| Promotions during 20:00–21:00 peak | 85 orders/hr · avg ฿642 — ลูกค้ามาเองอยู่แล้ว |
| Price increase before August 2026 | 3-month rule · Last adjustment: May 2026 |

## Approved Promotions — Currently Running

| # | ชื่อ | Bundle | Margin | Net Gain/month |
|---|------|--------|--------|----------------|
| 1 | เติมโต๊ะ | จิ้นส้มหมก + แคบหมู + ข้าวเหนียว · ฿109 | 59.6% | — |
| 2 | เซ็ตฮิต | ซี่โครง + ลาบ + จิ้นส้มหมก + ข้าวเหนียว 2 ก้อน · ฿219 | 63% | — |
| 3 | น้ำเปล่าฟรี | Food ฿350+ → น้ำเปล่าฟรี unlimited | ~75% on water | +฿8,596/month |
| 4 | เบียร์ฟรีหลัง 21:00 | New food order ฿199+ after 21:00 → เบียร์ 1 ขวดฟรี | variable | +฿6–97/bill |

Note on โปร 4: Staff must recommend low-FC items (ลาบคั่วหมู, กะหล่ำปลี, ยำวุ้นเส้น). High-FC items (ปีกไก่ทอด, ใส้ทอด) result in net loss.

## Output Format

```
STATUS: 🔴 BANNED / 🟢 APPROVED / 🟡 NEEDS ANALYSIS

เหตุผล: [1–2 บรรทัด]

ถ้า BANNED → เสนอทางเลือกที่ถูกกฎ 1 อัน
ถ้า APPROVED → บอก margin, condition, และข้อควรระวัง
ถ้า NEEDS ANALYSIS → แนะนำให้ใช้ analyze-promotion skill
```

## Red Flags

- Responding without checking banned list first
- Recommending a banned promotion with caveats ("อาจจะทำได้ถ้า...")
- Forgetting the 3-month price rule
