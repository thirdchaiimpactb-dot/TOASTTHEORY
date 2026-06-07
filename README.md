# TOASTTHEORY

> Claude Code Plugin — Restaurant Promotion Analysis Skills for YKYN (อยากข้าว อยากน้ำ)

8 skills for analyzing, creating, and reporting restaurant promotions — pre-loaded with real cost data, a 6-step Net Profit framework, and Apple-style reporting.

---

## Install

```bash
claude plugin add https://github.com/thirdchaiimpactb-dot/TOASTTHEORY
```

---

## How It Works

At session start, the `hooks/session-start` script injects `skills/using-toasttheory/SKILL.md` into the agent's context. The agent then knows which skill to read for each task — skills are loaded on demand from `skills/*/SKILL.md`.

No slash commands. Skills are invoked through natural language.

---

## Skills

| Skill | Use when... |
|-------|-------------|
| `using-toasttheory` | Auto-injected at session start — bootstrap |
| `analyze-promotion` | วิเคราะห์โปรโมชั่น — 6-step Net Profit framework |
| `create-promotion` | สร้างโปรโมชั่นใหม่ — bundle + staff script + break-even |
| `check-promotion-rules` | เช็ค banned/approved list ทันที |
| `compare-promotions` | เปรียบเทียบหลายโปร ranked by Net Gain/month |
| `lookup-cost-data` | ดูต้นทุน/margin/FC% ของสินค้า |
| `detect-promotion-traps` | ตรวจ 6 กับดักที่ทำให้ margin หาย |
| `generate-promo-report` | สร้าง performance report (Apple-style layout) |

---

## Restaurant Context

**YKYN (อยากข้าว อยากน้ำ)** — Northern Thai restaurant, Nongjom Intersection, Sansai, Chiang Mai

- Open 16:00–24:00 · Kitchen closes 22:00 · ~25 tables
- 383 orders/month · Avg ticket ฿560 · Peak 20:00–22:00 (avg ฿642)
- Primary upsell target: ฿400–600 bracket (27.7% of bills)

---

## The 6-Step Analysis Framework

| Step | Description |
|------|-------------|
| 1. Objective | Pick goal: ticket↑ / dwell↑ / traffic / item push / repeat |
| 2. Net Profit | Calculate exact profit per bill after all costs |
| 3. 3 Scenarios | Conservative (20%) must be positive · Base (40%) · Optimistic (60%) |
| 4. 6 Traps | Condition too low / wrong timing / expensive free item / high FC% / price rule / missing data |
| 5. Alternatives | ≥ 2 ranked by Net Gain/month |
| 6. KPIs | Baseline + target + kill condition |

---

## Banned Promotions (Built-in)

- ❌ Buy 3 Get 1 Free เบียร์ (guaranteed loss)
- ❌ Beer discount >10%
- ❌ Free beer with drink-only purchase
- ❌ Any promotion during 20:00–21:00 peak
- ❌ Price changes before August 2026

---

## Structure

```
.claude-plugin/
├── marketplace.json
└── plugin.json
hooks/
├── hooks.json
├── run-hook.cmd
└── session-start
skills/
├── using-toasttheory/SKILL.md   ← injected at session start
├── analyze-promotion/SKILL.md
├── create-promotion/SKILL.md
├── check-promotion-rules/SKILL.md
├── compare-promotions/SKILL.md
├── lookup-cost-data/SKILL.md
├── detect-promotion-traps/SKILL.md
└── generate-promo-report/SKILL.md
```

---

**v1.1.0** · June 2026 · Based on April–May 2026 sales baseline
