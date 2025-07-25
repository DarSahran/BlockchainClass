const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("EtherWalletModule", (m) => {
try {
// Deploy the contract
const etherWallet = m.contract("EtherWallet");

// Return the deployed contract object to access its address
return { etherWallet };
} catch (error) {
console.error("Error deploying EtherWallet contract:", error.message);
process.exit(1); // Exit the process with an error code
}
});