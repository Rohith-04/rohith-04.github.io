---
title: "aervia — embedded AI voice agent"
status: "done"
tags: ["C", "AXI DMA", FPGA]
order: 2
---

## overview

production voice agent running on constrained hardware. end-to-end embedded system spanning RTL, firmware, and the machine learning inference pipeline.

## motivation

to ship a product that runs inference on-device, on a tight power and memory budget. this meant owning the full stack — from the AXI DMA controller that feeds data to the accelerator, to the peripheral drivers, to the inference pipeline itself.

## goals

- AXI DMA controller — designed from first principles
- peripheral drivers for audio codec and accelerators
- inference pipeline optimization for the target hardware
- end-to-end voice agent functionality

## current status

completed. shipped and operational. the AXI DMA controller was written up as a reference — see the related posts below.

## roadmap

completed.

## progress timeline

- **RTL** — AXI DMA controller design and verification
- **firmware** — peripheral drivers and DMA programming model
- **integration** — inference pipeline and voice agent
- **ship** — production deployment
