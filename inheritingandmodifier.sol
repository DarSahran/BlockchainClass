// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ParentContract {
address owner;

constructor() {
owner = msg.sender;
}

modifier onlyOwner() virtual {
require(msg.sender == owner, "Only the owner can call this function");
_;
}

function setResult(uint _result) public virtual onlyOwner {
// Implementation
}
} 

contract ChildContract is ParentContract {
uint result;

modifier onlyOwner() override {
require(msg.sender == owner, "Only the owner can call this function");
_;
}

function setResult(uint _result) public override onlyOwner {
result = _result;
}
}
