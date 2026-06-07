# TOASTTHEORY — YKYN Restaurant Promotion Analysis Plugin

Plugin สำหรับวิเคราะห์และออกแบบโปรโมชั่นร้านอาหาร YKYN (อยากข้าว อยากน้ำ)
โดยใช้ข้อมูลต้นทุนจริงและ framework การวิเคราะห์ Net Profit

---

## Custom Agent

| Agent | วัตถุประสงค์ | Model |
|-------|------------|-------|
| `ykyn-promo-analyst` | วิเคราะห์และแนะนำโปรโมชั่น อิงจากต้นทุนและยอดขายจริง | Opus 4.8 |

---

## Slash Commands

| Command | การใช้งาน | ตัวอย่าง |
|---------|----------|---------|
| `/promo-analyze` | วิเคราะห์โปรโมชั่น 6 ขั้นตอน | `/promo-analyze ซื้อ 5 ขวดลด 20%` |
| `/promo-create` | สร้างโปรโมชั่นใหม่ | `/promo-create เพิ่ม ticket ช่วง 16:00-18:00` |
| `/promo-check` | เช็ค banned/approved list | `/promo-check buy 3 get 1 free` |
| `/promo-compare` | เปรียบเทียบหลายโปร | `/promo-compare all` |
| `/promo-cost` | ดูข้อมูลต้นทุนสินค้า | `/promo-cost beer` หรือ `/promo-cost promo-safe` |
| `/promo-trap` | ตรวจ 6 กับดักโปรโมชั่น | `/promo-trap น้ำเปล่าฟรีทุกโต๊ะ` |
| `/promo-report` | สร้าง performance report | `/promo-report monthly` |

---

## Analysis Framework

ทุกการวิเคราะห์ใช้ 6-step framework:
1. **Objective** — ระบุเป้าหมายโปร (A-E)
2. **Net Profit** — คำนวณกำไรสุทธิต่อบิล
3. **3 Scenarios** — Conservative (20%) / Base (40%) / Optimistic (60%)
4. **6 Traps** — ตรวจ 6 กับดักที่ทำให้โปรล้มเหลว
5. **Alternatives** — เปรียบเทียบอย่างน้อย 2 ทางเลือก
6. **KPIs** — กำหนด baseline, target, kill condition

**Golden Rule**: Net Profit > Revenue เสมอ

---

## โครงสร้างไฟล์

```
.claude/
├── agents/
│   └── ykyn-promo-analyst.md     # Main analyst agent + full restaurant context
└── commands/
    ├── promo-analyze.md          # /promo-analyze
    ├── promo-create.md           # /promo-create
    ├── promo-check.md            # /promo-check
    ├── promo-compare.md          # /promo-compare
    ├── promo-cost.md             # /promo-cost
    ├── promo-trap.md             # /promo-trap
    └── promo-report.md           # /promo-report
CLAUDE.md
README.md
```
