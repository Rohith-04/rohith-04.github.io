---
layout: post
title: "six months in embedded, coming back to RTL"
date: 2025-04-17
tags: [embedded, reflection]
excerpt: "what abstraction layers feel like when you've lived at several of them."
---

what abstraction layers feel like when you've lived at several of them.

six months building production embedded systems — firmware, drivers, DMA, inference pipelines. then coming back to RTL where everything is clock cycles and wire delays.

the thing that surprised me most was how similar the debugging mindset is. whether it's a bad pointer or a setup/hold violation, you're still tracing effects back to causes through layers you don't fully trust.
