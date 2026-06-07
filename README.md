# TOASTTHEORY

> Claude Code Plugin — Restaurant Promotion Analysis System for YKYN (อยากข้าว อยากน้ำ)

A Claude Code marketplace plugin that provides AI-powered promotion analysis for Northern Thai restaurants, built on real cost data and a rigorous Net Profit framework.

---

## What It Does

TOASTTHEORY helps restaurant owners analyze, create, and optimize promotions by:

- **Calculating Net Profit** across 3 scenarios (conservative/base/optimistic)
- **Detecting 6 common promotion traps** that cause margin erosion
- **Recommending high-margin bundles** using actual food cost data
- **Generating staff scripts** in Thai for table-side upselling
- **Tracking approved vs. banned promotions** with clear reasoning

---

## Quick Start

After installing the plugin, use these slash commands in Claude Code:

```bash
# Analyze any promotion idea
/promo-analyze ลด 20% เบียร์ทุกยี่ห้อวันศุกร์

# Create a new promotion
/promo-create เพิ่ม ticket size ช่วง 16:00-18:00

# Check if a promotion is banned
/promo-check buy 3 get 1 free เบียร์

# Compare multiple options
/promo-compare all

# Look up cost data
/promo-cost promo-safe

# Run trap detection
/promo-trap น้ำเปล่าฟรีทุกโต๊ะไม่มีเงื่อนไข

# Generate monthly report
/promo-report monthly
```

---

## Restaurant Context

Built for **YKYN (อยากข้าว อยากน้ำ)** — Northern Thai restaurant, Chiang Mai:
- 383 orders/month | Avg ticket ฿560 | Open 16:00–24:00
- Peak: 20:00–22:00 (avg ฿642) | Primary upsell target: ฿400–600 bracket

Pre-loaded with actual cost data for beer, spirits, food items, and current promotions.

---

## The 6-Step Analysis Framework

Every promotion analysis follows this process:

| Step | Description |
|------|-------------|
| 1. Objective | Identify promotion goal (ticket↑ / dwell↑ / traffic / item push / repeat) |
| 2. Net Profit | Calculate exact profit per bill after all costs |
| 3. 3 Scenarios | Conservative (20%) → Base (40%) → Optimistic (60%) conversion |
| 4. 6 Traps | Condition too low / wrong timing / expensive free item / high FC% / price rule / missing data |
| 5. Alternatives | At least 2 ranked alternatives by Net Gain/month |
| 6. KPIs | Baseline + target + kill condition (stop if <20% conversion in 2 weeks) |

---

## Banned Promotions (Built-in Rules)

These are permanently blocked based on financial analysis:

- ❌ Buy 3 Get 1 Free beer (guaranteed loss per transaction)
- ❌ Beer discount >10% (margin too thin)
- ❌ Free beer with drink-only purchase
- ❌ Any incentive during 20:00–21:00 peak hours
- ❌ Price changes before August 2026 (3-month rule from May 2026)

---

## Skills Overview

| Skill | Purpose |
|-------|---------|
| `/promo-analyze` | Full 6-step analysis with verdict |
| `/promo-create` | Build new promotion with bundle + staff script |
| `/promo-check` | Instantly check banned/approved status |
| `/promo-compare` | Side-by-side comparison ranked by Net Gain |
| `/promo-cost` | Database lookup for margins and FC% |
| `/promo-trap` | Dedicated 6-trap audit |
| `/promo-report` | Weekly/monthly performance report |

---

## Installation

Add to your Claude Code project by cloning or referencing this repository.
The plugin loads automatically when `.claude/agents/` and `.claude/commands/` are present.

---

## Version

**v1.0.0** — June 2026 | Based on April–May 2026 sales baseline
