Simple Voting System Smart Contract

This is a beginner-level Solidity smart contract created while learning blockchain development.
It represents a simple voting system where people can vote for one of two candidates in a fair and transparent way.

Each wallet address is allowed to vote only once, and the person who deploys the contract (admin) can start or stop the voting process.

What this contract does

Lets users vote for Candidate 1 or Candidate 2

Ensures one vote per wallet

Prevents double voting

Allows the admin to turn voting ON or OFF

Shows live vote counts publicly

How voting works

A user calls the vote() function and chooses a candidate

Only two options are allowed:

1 for Candidate 1

2 for Candidate 2

Once a user votes, they cannot vote again

If voting is turned OFF, no one can vote

Admin control

The admin is the wallet that deploys the contract

Only the admin can enable or disable voting

This helps control when voting starts and ends

Main functions

vote(uint candidateId) – Cast a vote for a candidate

getVotes() – View total votes for both candidates

toggleVotingStatus(bool status) – Admin can turn voting ON or OFF

Tools used

Solidity ^0.8.0

Remix Ethereum IDE

Author

Priyanshu
