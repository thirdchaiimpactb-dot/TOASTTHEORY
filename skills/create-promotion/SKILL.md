---
name: create-promotion
description: Use when asked to design or build a new promotion from scratch
---

# Create Promotion

## Overview

"Build bundles from low-FC items. The staff script is not optional."

Every new promotion must have: bundle composition, price, break-even, staff script in Thai, and kill condition.

## When to Use

Always use this skill when:
- User asks to create, design, or propose a new promotion
- User describes a business objective and wants a promotion built for it

## Core Rule — FC% Gate

**Never include items with FC% > 35% in a bundle.**

Safe items (always eligible):
| Item | FC% |
|------|-----|
| กะหล่ำปลีผัดน้ำปลา | 15.5% |
| ลาบคั่วหมู | 28.8% |
| แคบหมู | 30.6% |
| ข้าวเหนียว | 25% |
| จิ้นส้มหมกใส่ไข่ | 34.8% |
| ลาบ/ยำ/ส้า (ทั่วไป) | 25–30% |
| ย่าง (ทั่วไป) | 28–32% |

Danger zone — exclude from all bundles:
- ปีกไก่ทอด: 58.9%
- ใส้ทอด: ~56%
- ต้มขมเนื้อ: 54.9%
- ปลาดอลลี่ต้มยำ: ~60%

Missing cost data — exclude until investigated:
- DUNKEL, PATTAYA Beer, Rose Beer

## Free Item Priority

น้ำเปล่า (฿3.75) > แคบหมู (฿15) > ข้าวเหนียว (฿5) > เบียร์ (฿52–57, food purchase only)

Free beer is only allowed when the condition requires a new food order ≥ ฿199 and staff recommend low-FC items.

## Steps

1. Clarify objective (A–E from `analyze-promotion`)
2. Select bundle items — all must pass FC% gate
3. Price the bundle: normal price − discount = promo price
4. Calculate: cost, profit, margin, break-even orders/day
5. Write staff script in Thai
6. Run conservative scenario (20%) — must be positive
7. Define kill condition

## Output Format

```
ชื่อโปร: [ชื่อจำง่าย]
Objective: [A/B/C/D/E]

Bundle:
- [สินค้า 1] (FC XX%)
- [สินค้า 2] (FC XX%)
- [สินค้า 3] (FC XX%)

ราคาปกติ: ฿XX | ราคาโปร: ฿XX | Save: ฿XX
ต้นทุน: ฿XX | กำไร: ฿XX | Margin: XX%
Break-even: ต้องขาย XX บิล/วัน

Staff script:
"[บทพูดภาษาไทย ระบุยอดรวมโต๊ะ และสิ่งที่ได้รับ]"

Net Gain/month (40% conversion): ฿XX,XXX
Kill condition: conversion <20% ใน 2 สัปดาห์ → หยุด
```

## Red Flags

- Any bundle item has FC% > 35%
- Bundle includes item with missing cost data
- Condition is too low (>80% of customers qualify automatically)
- Staff script missing or in English

## Verification Before Completing

- [ ] All bundle items pass FC% gate
- [ ] No items with missing cost data
- [ ] Staff script written in Thai
- [ ] Break-even calculated
- [ ] Conservative scenario (20%) is positive
- [ ] Kill condition stated
