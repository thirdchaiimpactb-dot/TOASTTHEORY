---
description: ดูข้อมูลต้นทุน margin และ FC% ของสินค้าในร้าน YKYN — ค้นหาตามชื่อสินค้าหรือหมวดหมู่
---

Use the ykyn-promo-analyst agent to look up COST DATA for:

"$ARGUMENTS"

Search and display matching items from the database:

**Beer (เบียร์)**
- เบียร์สิงห์: cost ฿57.33 / sell ฿79 / margin 27.4%
- เบียร์ลีโอ: cost ฿53.67 / sell ฿69 / margin 22.2%
- เบียร์ช้าง: cost ฿52.42 / sell ฿69 / margin 24.0%
- เบียร์คาราบาว: cost ฿52.42 / sell ฿69 / margin 24.0%
- สิงห์ โปร3: cost ฿171.99 / sell ฿219 / margin 21.5%
- ลีโอ โปร3: cost ฿161.01 / sell ฿199 / margin 19.1%
- ช้าง โปร3: cost ฿157.25 / sell ฿199 / margin 21.0%
- สิงห์ 5 ขวด: cost ฿286.67 / sell ฿329 / margin 12.9% ⚠️
- ช้าง 5 ขวด: cost ฿262.08 / sell ฿299 / margin 12.3% ⚠️
- ลีโอ 5 ขวด: cost ฿268.33 / sell ฿299 / margin 10.3% ⚠️
- สิงห์ 1 ลัง: cost ฿688 / sell ฿799 / margin 13.9% ⚠️

**Spirits (เหล้า)**
- แสงโสมแบน: cost ฿143 / sell ฿199 / margin 28.1%
- แสงโสมกลม: cost ฿290 / sell ฿369 / margin 21.4%
- รีเจนซี่แบน: cost ฿300 / sell ฿459 / margin 34.6%
- รีเจนซี่กลม: cost ฿516.67 / sell ฿659 / margin 21.6%

**Non-Alcoholic (ไม่มีแอลกอฮอล์)**
- น้ำเปล่าสิงห์: cost ฿3.75 / sell ฿15 / margin 75.0%
- โซดาสิงห์: cost ฿7.71 / sell ฿20 / margin 61.5%
- น้ำโค๊ก/สไปร์ท: cost ฿9.58 / sell ฿20 / margin 52.1%
- สิงห์เลม่อน: cost ฿14 / sell ฿20 / margin 30.0%
- น้ำแข็ง: cost ~฿1 / sell ฿5 / margin ~80%

**Food Highlights**
- ข้าวเหนียว: cost ฿5/ก้อน / sell ฿20 / FC 25%
- แคบหมู: cost ฿15 / sell ฿49 / FC 30.6%
- จิ้นส้มหมกใส่ไข่: cost ฿24 / sell ฿69 / FC 34.8%
- กะหล่ำปลีผัดน้ำปลา: FC 15.5% (BEST MARGIN)
- ลาบคั่วหมู: FC 28.8%
- ปีกไก่ทอด: FC 58.9% ❌ DANGER

**MISSING DATA (ห้ามใช้ใน promo จนกว่าจะมีข้อมูล)**
DUNKEL, PATTAYA Beer, Rose Beer

Output format:
- แสดงสินค้าที่ match กับ "$ARGUMENTS"
- ถ้าค้นหา "all" → แสดงตารางทั้งหมด
- ถ้าค้นหา "promo-safe" → แสดงเฉพาะ FC <35%
- ถ้าค้นหา "danger" → แสดงเฉพาะ FC >45%
- บอก promo suitability ของแต่ละรายการ
