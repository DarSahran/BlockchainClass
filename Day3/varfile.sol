// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Functions {
    int public result; // Stores the result on-chain

    // Return the stored result (free view function)
    function getResult() public view returns (int) {
        return result;
    }

    // Calculates result = square(number) + 1 and stores it (requires gas)
    function calculateResult(int number) public returns (int) {
        result = square(number) + 1;
        return result;
    }

    // Returns the square of a number (no gas, pure function)
    function square(int number) public pure returns (int) {
        return number * number;
    }
}


