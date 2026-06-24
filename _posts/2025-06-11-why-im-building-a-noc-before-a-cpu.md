---
layout: post
title: "why i'm building a NoC before a CPU"
date: 2025-06-11
tags: [architecture, NoC]
projects: [linnea]
excerpt: "the interconnect is the hardest part. i wanted to understand it before i had cores to connect."
---

the interconnect is the hardest part. i wanted to understand it before i had cores to connect.

it sounds backwards — build the network before you have anything to connect — but the NoC forces you to think about contention, routing, flow control, and deadlock freedom on day one. if you add the interconnect after the cores, you end up designing around constraints you didn't know you had.

starting with the NoC means the cores will be guests on a network that was designed to be fast, not patched together to make things work.
