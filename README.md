# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.js
```


```markdown
# 🗳️ DAO Voting DApp

This is a simple DAO-style decentralized voting system built using **Solidity** and **Hardhat**. It allows the chairperson to give voting rights, and registered users can vote only once for a proposal. The proposal with the most votes wins.

## ✨ Features

- Chairperson can assign voting rights
- Voters can vote only once
- Automatically shows the winning proposal
- Transparent and tamper-proof via Ethereum smart contract

---

## 📁 Project Structure

```

VotingDappDAO/
├── contracts/
│   └── VotingDAO.sol
├── scripts/
│   └── deploy.js
├── test/
│   └── VotingDAO.js
├── hardhat.config.js
├── package.json
└── README.md

````

---

## 🧑‍💻 Tech Stack

- [Solidity](https://soliditylang.org/)
- [Hardhat](https://hardhat.org/)
- [Ethers.js](https://docs.ethers.org/)
- [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript)

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Tanishka-47/VotingDappDAO.git
cd VotingDappDAO
````

### 2. Install Dependencies

```bash
npm install
```

### 3. Compile the Contract

```bash
npx hardhat compile
```

### 4. Deploy Locally

```bash
npx hardhat run scripts/deploy.js --network hardhat
```

### 5. Run Tests

```bash
npx hardhat test
```

---

## 📌 Smart Contract Overview

```solidity
function giveRightToVote(address voter) public onlyChairperson;
function vote(uint proposalIndex) public;
function winningProposal() public view returns (uint);
function getProposals() public view returns (Proposal[]);
```

## 📄 License

This project is open source under the [MIT License](LICENSE).

---

## 🙋‍♀️ Created By

**Tanishka Gupta**
🔗 [Twitter](https://x.com/TechNishka47) | 
⭐ If you like this project, please give it a star!

```