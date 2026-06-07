---
description: ตรวจสอบ 6 กับดักโปรโมชั่น YKYN — ป้องกันการสร้างโปรที่ทำให้ขาดทุน
---

Use the ykyn-promo-analyst agent to run a TRAP CHECK on:

"$ARGUMENTS"

Systematically check all 6 traps for the given promotion:

---

**TRAP 1 — CONDITION TOO LOW?**
- เกณฑ์: >80% ของลูกค้าผ่านอยู่แล้ว = ให้ฟรีเปล่าๆ
- เช็ค: avg ticket ฿560 → ถ้า condition คือ ฿300+ = ทุกคนได้ฟรี
- ข้อมูล: ลูกค้า ฿400+ = 67.8% ของ bills
- STATUS: ✅ / ❌

**TRAP 2 — WRONG TIMING?**
- เกณฑ์: peak hours ไม่ต้องการ incentive
- Peak: 20:00-21:00 (85 orders/hr, avg ฿642) → ห้ามทำโปร
- Slow: 16:00-18:00 (avg ฿304-394) → ต้องการ incentive
- STATUS: ✅ / ❌

**TRAP 3 — FREE ITEM TOO EXPENSIVE?**
- เกณฑ์: free item cost สูงเกิน margin ที่ได้
- Risky: เบียร์ cost ฿52-57 (ต้องการ food margin >40% เพื่อ absorb)
- Safe: น้ำเปล่า ฿3.75 / แคบหมู ฿15 / ข้าวเหนียว ฿5
- STATUS: ✅ / ❌

**TRAP 4 — HIGH FC% FOOD IN PROMO?**
- เกณฑ์: FC% >45% = DANGER ZONE
- Danger items: ปีกไก่ทอด (58.9%), ใส้ทอด (~56%), ต้มขมเนื้อ (54.9%)
- Safe items: กะหล่ำปลี (15.5%), ลาบคั่วหมู (28.8%), แคบหมู (30.6%)
- STATUS: ✅ / ❌

**TRAP 5 — PRICE CHANGE TOO RECENT?**
- เกณฑ์: 3-month rule
- Last adjustment: May 2026
- Next eligible: August 2026
- ถ้าโปรต้องการปรับราคา → ❌ ยังทำไม่ได้
- STATUS: ✅ / ❌

**TRAP 6 — MISSING COST DATA?**
- เกณฑ์: ห้ามวิเคราะห์หรือใช้สินค้าที่ไม่มีข้อมูลต้นทุน
- Missing: DUNKEL, PATTAYA Beer, Rose Beer
- ถ้าโปรใช้สินค้าเหล่านี้ → ❌ ต้องหาข้อมูลก่อน
- STATUS: ✅ / ❌

---

**TRAP SUMMARY**
```
Trap 1 (Condition): ✅/❌ — [เหตุผล]
Trap 2 (Timing):    ✅/❌ — [เหตุผล]
Trap 3 (Free item): ✅/❌ — [เหตุผล]
Trap 4 (FC%):       ✅/❌ — [เหตุผล]
Trap 5 (Price):     ✅/❌ — [เหตุผล]
Trap 6 (Data):      ✅/❌ — [เหตุผล]

OVERALL: 🟢 CLEAR (ไม่มีกับดัก) / 🟡 WARNING (มีข้อควรระวัง) / 🔴 FAIL (ห้ามทำ)
```

ถ้า "$ARGUMENTS" ว่าง → ถามว่าต้องการเช็คโปรไหน
