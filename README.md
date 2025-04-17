# 🧪 Smart Contract Lab

**A dual-environment playground for building and testing smart contracts on Cardano using both Haskell (Plutus) and Aiken.** This repository serves as a modular toolkit, a learning environment, and a growing archive of on-chain experiments.

## 🧭 Overview

This repo is organized into two core sections:

- `haskell-contracts/` — Contracts written in Plutus using Haskell, focusing on validation logic, functional design, and off-chain integration.
- `aiken-contracts/` — Contracts written in Aiken, designed for simplicity, speed, and on-chain determinism.

Each script is modular, documented, and meant to serve as both an educational tool and a launchpad for more complex apps.

---

## 💡 Why Both?

Cardano is unique in its contract architecture — and understanding both the legacy and emerging tools is essential. By maintaining both Haskell and Aiken scripts:

- We showcase the **differences in syntax and design philosophies**.
- We reinforce **best practices across the entire toolchain**.
- We build **cross-compatible intuition** for real-world Cardano dApps.

---

## 🔍 Current Modules

| Feature                 | Haskell           | Aiken            | Status        |
|------------------------|-------------------|------------------|---------------|
| Always True Validator  | ✅                | ✅               | Complete      |
| NFT Mint Policy        | 🔄 In Progress     | ✅               | Partial       |
| Timelock Script        | ✅                | ✅               | Complete      |
| Signature Validator    | ✅                | 🔲 Planned        | Mixed         |
| On-chain Counter       | ✅                | 🔲 Planned        | Haskell only  |

---

## 🧪 How to Use

- For **Haskell contracts**: follow instructions in `haskell-contracts/README.md`.
- For **Aiken contracts**:
  ```bash
  cd aiken-contracts
  aiken check
  aiken test
