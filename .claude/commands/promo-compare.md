---
description: เปรียบเทียบโปรโมชั่น 2+ อัน โดย ranked by Net Gain/month และ effort
---

Use the ykyn-promo-analyst agent to COMPARE the following promotion options:

"$ARGUMENTS"

For each option, calculate and display:

| เกณฑ์ | โปร A | โปร B | โปร C |
|-------|-------|-------|-------|
| Objective | | | |
| Target segment | | | |
| Timing | | | |
| ต้นทุน/บิล | ฿ | ฿ | ฿ |
| กำไร/บิล | ฿ | ฿ | ฿ |
| Margin | % | % | % |
| Net Gain/month (40%) | ฿ | ฿ | ฿ |
| Risk level | | | |
| Staff effort | | | |
| Banned traps | | | |

Then provide:
**RECOMMENDATION**: โปรที่แนะนำ พร้อมเหตุผล (Net Gain สูงสุด ที่ effort ต่ำสุด)
**RUNNER-UP**: โปรอันดับ 2 ถ้าต้องการทางเลือก
**DO NOT USE**: โปรที่ไม่แนะนำ พร้อมเหตุผล

ถ้า "$ARGUMENTS" ว่าง → ขอให้ระบุโปรที่ต้องการเปรียบเทียบ (อย่างน้อย 2 อัน)
ถ้าระบุ "all" → เปรียบเทียบ approved promotions ทั้ง 4 ที่มีอยู่
