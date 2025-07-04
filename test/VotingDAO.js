const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("VotingDAO", function () {
  it("Should deploy and allow voting", async function () {
    const [owner, voter1] = await ethers.getSigners();

    const VotingDAO = await ethers.getContractFactory("VotingDAO");

    // 👇 Pass proposals in constructor
    const voting = await VotingDAO.deploy(["Pizza", "Burger"]);

    // ✅ No need for `.deployed()` here — `await VotingDAO.deploy()` already waits

    // Give voting rights to voter1
    await voting.giveRightToVote(voter1.address);

    // Cast vote
    await voting.connect(voter1).vote(1);

    // Get winning proposal
    const winning = await voting.winningProposal();

    expect(winning).to.equal(1);
  });
});
