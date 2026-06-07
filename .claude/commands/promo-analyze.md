---
description: วิเคราะห์โปรโมชั่นด้วย 6-step YKYN framework — คำนวณ Net Profit 3 กรณี, ตรวจ 6 กับดัก, เปรียบเทียบทางเลือก
---

Use the ykyn-promo-analyst agent to perform a FULL 6-STEP PROMOTION ANALYSIS for:

"$ARGUMENTS"

Follow the exact framework:

**STEP 1** — ระบุ Objective ของโปร (A/B/C/D/E)
**STEP 2** — คำนวณ Net Profit per bill
**STEP 3** — Run 3 scenarios table:
  - Conservative (20% conversion) — ต้องเป็นบวกเสมอ
  - Base case (40% conversion)
  - Optimistic (60% conversion)
**STEP 4** — ตรวจ 6 กับดัก:
  1. Condition ต่ำเกิน (>80% ลูกค้าผ่านอยู่แล้ว)?
  2. ผิด timing (peak hour ไม่ต้องการ incentive)?
  3. Free item แพงเกิน (beer ฿52-57 risky, น้ำ ฿3.75 safe)?
  4. Food FC% สูงใน promo (>35% = DANGER)?
  5. ปรับราคาเร็วเกิน (3-month rule, last: May 2026)?
  6. ข้อมูลต้นทุนขาด (ห้ามวิเคราะห์ถ้าไม่มีข้อมูล)?
**STEP 5** — เสนอ 2 ทางเลือก ranked by Net Gain/month
**STEP 6** — กำหนด KPIs: baseline, target หลัง 2 สัปดาห์, kill condition

Output ตาม format:
1. VERDICT (1 บรรทัด)
2. ตาราง Net กำไร 3 กรณี
3. กับดักที่พบ
4. ทางเลือกเปรียบเทียบ
5. Action items พร้อม timing

ถ้า "$ARGUMENTS" ว่าง → ถามว่าต้องการวิเคราะห์โปรไหน
