---
name: lookup-cost-data
description: Use when cost, margin, or FC% data is needed for any item
---

# Lookup Cost Data

## Overview

"Never analyze without real cost data. Flag missing items."

## When to Use

Always use this skill when:
- User asks about cost, margin, or FC% of any item
- A promotion is being built and item costs need verification
- User asks for "promo-safe" or "danger zone" items

## Cost Database (Updated May 2026)

### Beer — Single Bottle
| สินค้า | ต้นทุน | ราคาขาย | Margin |
|--------|--------|----------|--------|
| เบียร์สิงห์ | ฿57.33 | ฿79 | 27.4% |
| เบียร์ลีโอ | ฿53.67 | ฿69 | 22.2% |
| เบียร์ช้าง | ฿52.42 | ฿69 | 24.0% |
| เบียร์คาราบาว | ฿52.42 | ฿69 | 24.0% |

### Beer — Current Promotions
| โปร | ราคาขาย | ต้นทุน | Margin |
|-----|----------|--------|--------|
| สิงห์ โปร3 | ฿219 | ฿171.99 | 21.5% |
| ลีโอ โปร3 | ฿199 | ฿161.01 | 19.1% |
| ช้าง โปร3 | ฿199 | ฿157.25 | 21.0% |
| สิงห์ 5 ขวด | ฿329 | ฿286.67 | 12.9% ⚠️ |
| ช้าง 5 ขวด | ฿299 | ฿262.08 | 12.3% ⚠️ |
| ลีโอ 5 ขวด | ฿299 | ฿268.33 | 10.3% ⚠️ |
| สิงห์ 1 ลัง | ฿799 | ฿688.00 | 13.9% ⚠️ |

### Spirits
| สินค้า | ต้นทุน | ราคาขาย | Margin |
|--------|--------|----------|--------|
| แสงโสมแบน | ฿143 | ฿199 | 28.1% |
| แสงโสมกลม | ฿290 | ฿369 | 21.4% |
| รีเจนซี่แบน | ฿300 | ฿459 | 34.6% |
| รีเจนซี่กลม | ฿516.67 | ฿659 | 21.6% |

### Non-Alcoholic
| สินค้า | ต้นทุน | ราคาขาย | Margin |
|--------|--------|----------|--------|
| น้ำเปล่าสิงห์ | ฿3.75 | ฿15 | 75.0% |
| โซดาสิงห์ | ฿7.71 | ฿20 | 61.5% |
| น้ำโค๊ก/สไปร์ท | ฿9.58 | ฿20 | 52.1% |
| สิงห์เลม่อน | ฿14.00 | ฿20 | 30.0% |
| น้ำแข็ง | ~฿1 | ฿5 | ~80% |

### Food — High-Margin (Safe for Promo, FC < 35%)
| สินค้า | ต้นทุน | ราคาขาย | FC% |
|--------|--------|----------|-----|
| กะหล่ำปลีผัดน้ำปลา | — | — | 15.5% ← BEST |
| ข้าวเหนียว | ฿5/ก้อน | ฿20 | 25% |
| ลาบคั่วหมู | — | — | 28.8% |
| แคบหมู | ฿15 | ฿49 | 30.6% |
| จิ้นส้มหมกใส่ไข่ | ฿24 | ฿69 | 34.8% |
| ลาบ/ยำ/ส้า (ทั่วไป) | — | — | 25–30% |
| ย่าง (ทั่วไป) | — | — | 28–32% |

### Food — Danger Zone (FC > 45%, ห้ามใช้ใน promo)
| สินค้า | FC% |
|--------|-----|
| ปลาดอลลี่ต้มยำ | ~60% |
| ปีกไก่ทอด | 58.9% |
| ใส้ทอด | ~56% |
| ต้มขมเนื้อ | 54.9% |

### Missing Cost Data — ห้ามรวมใน promo จนกว่าจะตรวจสอบ
DUNKEL · PATTAYA Beer · Rose Beer

## Output Format

- Show matching items with cost, sell price, margin/FC%, and promo suitability
- Query "promo-safe" → show only FC < 35%
- Query "danger" → show only FC > 45%
- Query "all" → show full database
- Always flag MISSING DATA items if they appear in the query
