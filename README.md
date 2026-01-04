# Simple Voting System Smart Contract

## Overview
This project is a beginner-level Solidity smart contract developed as part of a blockchain learning assignment.  
The contract implements a simple and transparent voting system between two candidates, ensuring fairness and security.

Each wallet address is allowed to vote only once, and the voting process can be controlled by an administrator.

---

## Objectives
- Enable users to vote for one of two candidates
- Prevent double voting by the same wallet address
- Allow the administrator to turn voting ON or OFF
- Provide transparent vote counting

---

## Features
- Two candidates (Candidate 1 and Candidate 2)
- One vote per wallet address
- Voting status control (ON / OFF)
- Admin-only control for enabling or disabling voting
- Public visibility of vote counts

---

## Voting Logic
- Users cast their vote by calling the `vote(uint candidateId)` function
- Valid candidate IDs are:
  - `1` → Candidate 1
  - `2` → Candidate 2
- A mapping is used to track whether an address has already voted
- If a user attempts to vote more than once, the transaction fails

---

## Voting Status Control (Bonus Requirement)
A boolean variable is used to control the voting status:
- `true` → Voting is ON
- `false` → Voting is OFF

Only the administrator (contract deployer) can change the voting status using the `toggleVotingStatus(bool status)` function.

The `vote` function works only when voting is ON.

---

## Smart Contract Functions

### `vote(uint candidateId)`
Allows a user to vote for Candidate 1 or Candidate 2.  
The function fails if:
- Voting is OFF
- The user has already voted
- An invalid candidate ID is provided

---

### `getVotes()`
Returns the total vote count for both candidates.

---

### `toggleVotingStatus(bool status)`
Allows only the administrator to turn voting ON or OFF.

---

## Admin Logic
The administrator is set at the time of contract deployment using `msg.sender` in the constructor.  
Only the admin wallet can control the voting status.

---

## Tools Used
- Solidity ^0.8.0
- Remix Ethereum IDE

---

## Author
Priyanshu
