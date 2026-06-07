---
description: ตรวจสอบว่าโปรโมชั่นอยู่ใน BANNED list หรือ APPROVED list ของ YKYN
---

Use the ykyn-promo-analyst agent to CHECK if the following promotion is BANNED, APPROVED, or NEEDS ANALYSIS:

"$ARGUMENTS"

Check against:

**BANNED LIST (ห้ามทำเด็ดขาด):**
1. Buy 3 Get 1 Free เบียร์ทุกยี่ห้อ → สิงห์ขาดทุน ฿10.32, ลีโอขาดทุน ฿13 ต่อบิล
2. Beer discount >10% ทุกกรณี
3. Free beer กับ drink purchase (ต้องมาจาก food เท่านั้น)
4. โปรใดๆ ระหว่าง 20:00-21:00 peak hour
5. ปรับราคาก่อน August 2026 (3-month rule จาก May 2026)

**APPROVED LIST (โปรที่ผ่านการวิเคราะห์แล้ว):**
1. โปร เติมโต๊ะ ฿109 — จิ้นส้มหมก+แคบหมู+ข้าวเหนียว (Margin 59.6%)
2. โปร เซ็ตฮิต ฿219 — ซี่โครง+ลาบ+จิ้นส้มหมก+ข้าวเหนียว 2 ก้อน (Margin 63%)
3. โปร น้ำเปล่าฟรี — order food ฿350+ (Net gain +฿8,596/month)
4. โปร เบียร์ฟรีหลัง 21:00 — order new food ฿199+ (เฉพาะ low-FC items)

Output:
```
STATUS: 🔴 BANNED / 🟢 APPROVED / 🟡 NEEDS ANALYSIS

เหตุผล: [อธิบาย]
ถ้า BANNED → เสนอทางเลือกที่ถูกกฎ
ถ้า APPROVED → บอก margin และ condition
ถ้า NEEDS ANALYSIS → แนะนำให้รัน /promo-analyze
```
