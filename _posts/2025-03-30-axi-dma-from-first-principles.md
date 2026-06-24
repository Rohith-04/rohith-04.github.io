---
layout: post
title: "AXI DMA from first principles"
date: 2025-03-30
tags: [AXI, DMA, RTL]
projects: [aervia]
excerpt: "built one at aervia. wrote it up properly so i'd actually remember how it works."
---

built one at aervia. wrote it up properly so i'd actually remember how it works.

a DMA controller looks simple on paper — read from here, write to there, interrupt when done. the details are in the address generation, the descriptor management, and the boundary cases nobody thinks about until they fail.

top things i got wrong the first time:
- wrapping bursts across address boundaries
- descriptor completion races with the interrupt handler
- what happens when the peripheral isn't ready and the bus is locked
