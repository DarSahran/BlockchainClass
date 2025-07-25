// SPDX-License-Identifier: MIT
   pragma solidity ^0.8.16;

   contract EtherWallet {

       // Address of the wallet owner, who can withdraw funds
       address payable public owner;

       // Constructor function to set the owner of the wallet
       constructor() {
           owner = payable(msg.sender);
       }

       // Function to deposit Ether into the wallet
       function deposit() public payable {}

       // Function to withdraw Ether from the wallet
       function withdraw(address payable receiver, uint amount) public {
           // Ensure that only the owner can withdraw funds
           require(msg.sender == owner, "Only owner can withdraw the Ether");
           // Transfer the specified amount to the receiver
           receiver.transfer(amount);
        }

       // Function to check the current balance of the wallet
       function balanceOf() public view returns (uint) {
           // Return the balance of Ether held by this contract
           return address(this).balance;
       }
   }