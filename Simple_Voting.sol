// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {

    // Admin of the contract
    address public admin;

    // Voting status (ON / OFF)
    bool public votingOn;

    // Vote count for candidates
    uint public candidate1Votes;
    uint public candidate2Votes;

    // Track who has already voted
    mapping(address => bool) public hasVoted;

    // Constructor sets admin and turns voting ON
    constructor() {
        admin = msg.sender;
        votingOn = true;
    }

    // Function to vote
    function vote(uint _candidateId) public {
        // Check if voting is ON
        require(votingOn == true, "Voting is currently OFF");

        // Ensure user has not voted before
        require(hasVoted[msg.sender] == false, "You have already voted");

        // Ensure valid candidate
        require(_candidateId == 1 || _candidateId == 2, "Invalid candidate");

        // Record the vote
        if (_candidateId == 1) {
            candidate1Votes++;
        } else {
            candidate2Votes++;
        }

        // Mark sender as voted
        hasVoted[msg.sender] = true;
    }

    // Function to get votes
    function getVotes() public view returns (uint, uint) {
        return (candidate1Votes, candidate2Votes);
    }

    // Admin can turn voting ON or OFF
    function toggleVotingStatus(bool _status) public {
        require(msg.sender == admin, "Only admin can change status");
        votingOn = _status;
    }
}
