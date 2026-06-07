---
description: สร้าง Promotion Performance Report รายสัปดาห์หรือรายเดือนสำหรับ YKYN
---

Use the ykyn-promo-analyst agent to generate a PROMOTION PERFORMANCE REPORT.

Arguments: "$ARGUMENTS"
- ถ้าว่าง หรือ "monthly" → Monthly Report
- "weekly" → Weekly Report
- "promo [ชื่อโปร]" → Report เฉพาะโปรนั้น

---

## REPORT TEMPLATE

Generate report with the following sections:

### 1. EXECUTIVE SUMMARY
- ช่วงเวลา: [สัปดาห์/เดือน]
- โปรที่ Active: [รายการ]
- Net Gain รวม: ฿XX
- โปรที่ทำได้ดีที่สุด: [ชื่อ]
- Alert: [โปรที่ควรพิจารณาหยุด ถ้ามี]

### 2. APPROVED PROMOTIONS STATUS
สำหรับแต่ละโปร (1-4) แสดง:
```
โปร X — [ชื่อ]
├── Target: [กลุ่มเป้าหมาย]
├── Margin: XX%
├── Est. Net Gain/month: ฿XX
├── Kill condition: conversion <20% ใน 2 สัปดาห์
└── Status: 🟢 Active / 🟡 Monitor / 🔴 Stop
```

### 3. TICKET SIZE ANALYSIS
- Current avg ticket vs. baseline (฿560)
- ฿400-600 bracket shift (target bracket)
- Peak hour (20:00-22:00) performance
- Slow hour (16:00-18:00) performance

### 4. BANNED PROMOTIONS REMINDER
Quick reminder ของโปรที่ห้ามทำ (condensed version)

### 5. NEXT PERIOD RECOMMENDATIONS
- โปรที่ควร continue
- โปรที่ควร test ใหม่
- Items ที่ควรหาต้นทุน (DUNKEL, PATTAYA Beer, Rose Beer)
- Price adjustment eligibility: [เช็ค 3-month rule]

### 6. ACTION ITEMS
| Priority | Action | Owner | Deadline |
|----------|--------|-------|----------|
| HIGH | | พนักงาน/เจ้าของ | |
| MED | | | |
| LOW | | | |

---

Note: ถ้าไม่มีข้อมูลยอดขายจริง → ใช้ baseline data (383 orders/month, avg ฿560)
และ estimate จาก approved promotion calculations
