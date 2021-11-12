// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// When running the script with `npx hardhat run <script>` you'll find the Hardhat
// Runtime Environment's members available in the global scope.
import { ethers } from "hardhat";
import {
  DevInRes__factory,
  QuestECDSA__factory,
  QuestPoW__factory,
  QuestTx__factory,
} from "../typechain";

async function main() {
  // Hardhat always runs the compile task when running scripts with its command
  // line interface.
  //
  // If this script is run directly using `node` you may want to call compile
  // manually to make sure everything is compiled
  // await hre.run('compile');

  // We get the contract to deploy
  const [admin] = await ethers.getSigners();
  const devInRes = await new DevInRes__factory(admin).deploy();
  const questECDSA = await new QuestECDSA__factory(admin).deploy();
  const questPoW = await new QuestPoW__factory(admin).deploy();
  const questTx = await new QuestTx__factory(admin).deploy();
  await devInRes.deployed();
  await questECDSA.deployed();
  await questPoW.deployed();
  await questTx.deployed();

  console.log("DevInRes deployed to:", devInRes.address);
  console.log("QuestTx deployed to:", questTx.address);
  console.log("QuestPoW deployed to:", questPoW.address);
  console.log("QuestECDSA deployed to:", questECDSA.address);
  await devInRes.registerQuest(
    questECDSA.interface.getSighash("verifySignature"),
    questECDSA.address
  );
  await devInRes.registerQuest(
    questPoW.interface.getSighash("pow"),
    questPoW.address
  );
  await devInRes.registerQuest(
    questTx.interface.getSighash("run"),
    questTx.address
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
