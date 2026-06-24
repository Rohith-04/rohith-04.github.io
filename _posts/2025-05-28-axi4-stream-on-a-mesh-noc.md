---
layout: post
title: "AXI4-Stream on a mesh NoC: what the spec doesn't say"
date: 2025-05-28
tags: [AXI, RTL, verification]
projects: [linnea]
excerpt: "compliance testing revealed three assumptions i didn't know i was making."
---

compliance testing revealed three assumptions i didn't know i was making.

1. **ready/valid handshake timing** — the spec says they're independent, but your router's credit scheme might not treat them that way.
2. **packet granularity** — AXI4-Stream doesn't care about packet boundaries. your NoC does.
3. **backpressure propagation** — a stall in one router can wedge the whole network if you haven't thought about it.

all three showed up in simulation. two of them would have shown up on silicon.
