// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FixedSizeArray {
// Declaring a fixed-size array of integers with 5 elements
uint[5] public fixedArray;

// Function to set values in the fixed-size array
function setValues() public {
fixedArray[0] = 1;
fixedArray[1] = 2;
fixedArray[2] = 3;
fixedArray[3] = 4;
fixedArray[4] = 5;
}

// Function to get a value at a specific index
function getValue(uint index) public view returns (uint) {
require(index < fixedArray.length, "Index out of bounds");
return fixedArray[index];
}
}

contract DynamicArray {
// Declaring a dynamic array of integers
uint[] public dynamicArray;

// Function to add a value to the dynamic array
function addValue(uint value) public {
dynamicArray.push(value);
}

// Function to get the length of the dynamic array
function getLength() public view returns (uint) {
return dynamicArray.length;
}

// Function to get a value at a specific index
function getValue(uint index) public view returns (uint) {
require(index < dynamicArray.length, "Index out of bounds");
return dynamicArray[index];
}

// Function to remove the last element from the dynamic array
function removeLast() public {
require(dynamicArray.length > 0, "Array is empty");
dynamicArray.pop();
}
}
