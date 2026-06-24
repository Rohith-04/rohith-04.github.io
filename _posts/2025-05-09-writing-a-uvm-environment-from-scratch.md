---
layout: post
title: "writing a UVM environment from scratch, the second time"
date: 2025-05-09
tags: [UVM, verification]
projects: [linnea]
excerpt: "i had scoreboard and monitor experience but had never stitched a complete env together."
---

i had scoreboard and monitor experience but had never stitched a complete env together.

the first time i tried writing a UVM environment, i copied someone else's structure and changed the names. the second time — for the NoC verification — i actually understood why each piece existed.

the factory pattern stops feeling like ceremony when you need to drop in an error-injection driver without touching the testbench topology. `type_id::set_type_override_by_type()` is the kind of feature you don't appreciate until you need it.
