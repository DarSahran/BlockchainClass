// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract SimpleContract {
    uint storedData; // State variable

    // Function to retrieve stored data
    function getStoredData() public view returns (uint) {
        return storedData;
    }

    // Function to return the square of a number
    function square(uint x) public pure returns (uint) {
        return x * x;
    }
}
