// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingDAO {
    struct Proposal {
        string description;
        uint voteCount;
    }

    address public chairperson;
    mapping(address => bool) public voters;
    Proposal[] public proposals;

    constructor(string[] memory proposalNames) {
        chairperson = msg.sender;
        voters[msg.sender] = true; // chairperson can vote
        for (uint i = 0; i < proposalNames.length; i++) {
            proposals.push(Proposal({
                description: proposalNames[i],
                voteCount: 0
            }));
        }
    }

    function giveRightToVote(address voter) public {
        require(msg.sender == chairperson, "Only chairperson can give rights");
        voters[voter] = true;
    }

    function vote(uint proposalIndex) public {
        require(voters[msg.sender], "Not allowed to vote");
        proposals[proposalIndex].voteCount += 1;
        voters[msg.sender] = false; // one vote only
    }

    function winningProposal() public view returns (uint winningProposalIndex) {
        uint maxVotes = 0;
        for (uint i = 0; i < proposals.length; i++) {
            if (proposals[i].voteCount > maxVotes) {
                maxVotes = proposals[i].voteCount;
                winningProposalIndex = i;
            }
        }
    }

    function getProposals() public view returns (Proposal[] memory) {
        return proposals;
    }
}
