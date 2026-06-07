---
name: compare-promotions
description: Use when asked to compare two or more promotions side by side
---

# Compare Promotions

## Overview

"Rank by Net Gain per month. Recommend the winner clearly."

## When to Use

Always use this skill when:
- User asks to compare promotions ("โปรไหนดีกว่า?", "เปรียบเทียบ", "แบบไหนคุ้มกว่า?")
- User says "all" → compare all 4 approved promotions

## Steps

1. Check each option against banned list (`check-promotion-rules`) — remove banned options before comparing
2. For each option, calculate: Net/bill, Margin, Net Gain/month at 40% conversion
3. Assess risk: staff effort, condition complexity, free item cost
4. Rank by Net Gain/month
5. Recommend winner + runner-up; explain why any option should not be used

## Output Format

```
COMPARISON

| เกณฑ์               | [โปร A]    | [โปร B]    | [โปร C]    |
|--------------------|-----------|-----------|-----------|
| Objective          |           |           |           |
| Target segment     |           |           |           |
| Timing             |           |           |           |
| ต้นทุน/บิล         | ฿XX       | ฿XX       | ฿XX       |
| กำไร/บิล           | ฿XX       | ฿XX       | ฿XX       |
| Margin             | XX%       | XX%       | XX%       |
| Net Gain/month     | ฿XX,XXX   | ฿XX,XXX   | ฿XX,XXX   |
| Staff effort       | Low/Med/High |        |           |
| Risk               | Low/Med/High |        |           |

RECOMMENDATION: [ชื่อโปร] — [เหตุผล 1 บรรทัด]
RUNNER-UP: [ชื่อโปร] — ถ้าต้องการทางเลือก
DO NOT USE: [ชื่อโปร ถ้ามี] — [เหตุผล]
```

## Red Flags

- Comparing without first checking banned list
- Recommending based on highest revenue instead of highest Net Gain
- Forgetting to note staff effort difference between options
