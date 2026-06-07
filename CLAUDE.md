# TOASTTHEORY

Plugin สำหรับวิเคราะห์และออกแบบโปรโมชั่นร้านอาหาร YKYN (อยากข้าว อยากน้ำ)
อิงจากข้อมูลต้นทุนจริงและ 6-step Net Profit framework

---

## How Skills Work

Skills are loaded on demand — the agent reads the relevant `SKILL.md` when needed.
The `using-toasttheory` skill is auto-injected at every session start via `hooks/session-start`.

| Task | Skill |
|------|-------|
| วิเคราะห์โปรโมชั่น | `skills/analyze-promotion/` |
| สร้างโปรโมชั่นใหม่ | `skills/create-promotion/` |
| เช็ค banned/approved | `skills/check-promotion-rules/` |
| เปรียบเทียบหลายโปร | `skills/compare-promotions/` |
| ดูต้นทุน/margin | `skills/lookup-cost-data/` |
| ตรวจ 6 กับดัก | `skills/detect-promotion-traps/` |
| สร้าง performance report | `skills/generate-promo-report/` |

---

## Structure

```
.claude-plugin/
├── marketplace.json    # Marketplace registration
└── plugin.json         # Plugin metadata
hooks/
├── hooks.json          # SessionStart hook config
├── run-hook.cmd        # Hook dispatcher
└── session-start       # Injects using-toasttheory at session start
skills/
├── using-toasttheory/  # Bootstrap — injected every session
├── analyze-promotion/
├── create-promotion/
├── check-promotion-rules/
├── compare-promotions/
├── lookup-cost-data/
├── detect-promotion-traps/
└── generate-promo-report/
```

---

## Golden Rule

Net Profit > Revenue. Conservative scenario (20% conversion) must be positive.
If in doubt, read `skills/check-promotion-rules/SKILL.md` first.
