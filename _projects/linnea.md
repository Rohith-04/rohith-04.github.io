---
title: "project linnea"
status: "active"
tags: [SystemVerilog, UVM, RISC-V, "VCS / Verdi", ZedBoard]
order: 1
---

## overview

multicore RISC-V system on a custom 2D mesh Network-on-Chip. the NoC is the backbone — understanding the interconnect before building the cores.

## motivation

the interconnect is the hardest part of a multicore design. i wanted to understand it before i had cores to connect. starting with the NoC forces you to think about contention, routing, flow control, and deadlock freedom from day one.

## goals

- functional 2D mesh NoC with AXI4-Stream compliance
- UVM verification environment on VCS/Verdi
- RISC-V core integration
- cache coherence protocol implementation
- FPGA validation on ZedBoard

## current status

NoC verification in progress. AXI4-Stream compliance testing revealed several implicit assumptions in the flow control logic. the router microarchitecture is stable; the testbench needs more corner cases.

## roadmap

1. complete NoC verification with UVM
2. RISC-V core design (starting with a simple in-order pipeline)
3. core-to-NoC bridge
4. cache hierarchy
5. coherence protocol (directory-based)
6. FPGA bring-up on ZedBoard

## progress timeline

- **apr 2025** — mesh NoC RTL complete
- **may 2025** — UVM environment bring-up, AXI4-Stream compliance
- **jun 2025** — NoC verification, corner-case testing
- **next** — RISC-V core microarchitecture
