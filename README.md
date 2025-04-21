# 🧪 Smart Contract Lab

A dual-environment playground for building and testing smart contracts on Cardano using both **Haskell** (Plutus-style) and **Aiken**. This repo is modular, educational, and continuously growing — an archive of smart contract ideas, testable logic, and on-chain intuition.

---

## 🧭 Project Structure

| Folder               | Description                                                    |
|----------------------|----------------------------------------------------------------|
| `cardano-haskell-lab/` | Contracts and logic written in Haskell (CLI-based, pure logic first) |
| `cardano-aiken-lab/`   | Contracts written in Aiken, structured for on-chain execution       |

Each folder is structured as its own learning lab, with small apps (like validators, toggles, counters, and access checkers) broken into their own directories and tracked independently.

---

## 💡 Why Both?

Cardano’s ecosystem is unique: it supports both traditional **Plutus-style Haskell** contracts and the newer, lightweight **Aiken** DSL.

By building in both:

- 🧠 We sharpen intuition across the toolchain
- 🛠️ We prototype logic in Haskell, then port to Aiken
- 🔁 We prepare for RVRS, a custom DSL that will eventually bridge both

---

## 🔍 Current Modules (from Smart Contract Lab)

| App                    | Haskell | Aiken  | Status         |
|------------------------|---------|--------|----------------|
| Role-based Validator   | ✅      | ✅     | Complete       |
| Toggle Switch          | ✅      | 🔲     | Haskell only   |
| Counter                | ✅      | 🔲     | Haskell only   |
| Always True Validator  | 🔲      | 🔲     | Planned        |
| NFT Mint Policy        | 🔲      | 🔲     | Planned        |

More modules in progress. Each focuses on **one concept at a time**: determinism, access control, validation, state tracking, etc.

---

🧪 In Development
We're also building:

A shared type library across Haskell and Aiken

RVRS, a new language that will eventually compile into Aiken

CI-ready test setups

A collection of smart contract templates for educational use

Stay modular. Stay testable. Stay sharp.
– The Lab
