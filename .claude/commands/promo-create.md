---
description: สร้างโปรโมชั่นใหม่สำหรับ YKYN — พร้อม bundle, staff script, และ break-even calculation
---

Use the ykyn-promo-analyst agent to CREATE a NEW PROMOTION based on:

"$ARGUMENTS"

Rules for creation:
1. **Bundle items**: ใช้เฉพาะ LOW FC items (<35%) เท่านั้น
   - SAFE: ลาบ/ยำ/ส้า (25-30%), ย่าง (28-32%), ข้าวเหนียว (25%), แคบหมู (30.6%), จิ้นส้มหมก (34.8%)
   - AVOID: ปีกไก่ทอด (58.9%), ใส้ทอด (~56%), ต้มขมเนื้อ (54.9%)
2. **Target**: ฿400-600 bracket (27.7% of bills = primary upsell target)
3. **Timing**: ห้ามให้ incentive ช่วง 20:00-21:00 peak
4. **Free item priority**: น้ำเปล่า > แคบหมู > ถั่วทอด > ข้าวเหนียว > เบียร์

Output format:
```
ชื่อโปร: [ชื่อที่จำง่าย]
Bundle: [รายการ + ราคารวม]
ราคาปกติ: ฿XX | ราคาโปร: ฿XX | Save: ฿XX
ต้นทุน: ฿XX | กำไร: ฿XX | Margin: XX%
Break-even: ต้องขายโปรนี้ XX บิล/วัน
Staff script (Thai): "[บทพูด]"
Net Gain/month (40% conversion): ฿XX
Kill condition: ถ้า conversion <20% ใน 2 สัปดาห์ → หยุด
```

ถ้า "$ARGUMENTS" ว่าง → ถามว่าต้องการสร้างโปรเพื่อวัตถุประสงค์อะไร:
A) เพิ่ม ticket size
B) เพิ่ม dwell time หลัง 21:00
C) ดึง traffic ช่วง 16:00-18:00
D) Push high-margin items
E) เพิ่ม repeat visits
