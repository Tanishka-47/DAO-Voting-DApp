const hre = require("hardhat");

async function main() {
  const VotingDAO = await hre.ethers.getContractFactory("VotingDAO");
  const votingDAO = await VotingDAO.deploy(["Proposal A", "Proposal B", "Proposal C"]);

  // ✅ Wait for deployment to finish
  await votingDAO.waitForDeployment();

  // ✅ Get contract address
  const address = await votingDAO.getAddress();
  console.log("VotingDAO deployed to:", address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
