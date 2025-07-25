const { task } = require('hardhat/config')

// Define a Hardhat task to print accounts and their balances
// This is a sample Hardhat task. To learn how to create your own go to
// https://hardhat.org/guides/create-task.html
task(
  'accounts',
  'Prints the list of accounts and their balances',
  async (taskArgs, hre) => {
    // Retrieve all signers from the Hardhat environment
    const accounts = await hre.ethers.getSigners();

    // Loop through each account and log its balance
    for (const account of accounts) {
      // Get the balance of the current account
      const balance = await hre.ethers.provider.getBalance(account.address);
      console.log(account.address, ': ', balance, 'ETH');
    }
  }
);

require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.28",
  paths: {
    sources: "./contracts",
    artifacts: "./src/artifacts",
  },

};