// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract to calculate the sum of numbers from 1 to n
contract SumCalculator {
    function sum(uint256 n) public pure returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 1; i <= n; i++) {
            total += i;
        }
        return total;
    }
}

// Contract to count down from n until i <= 2, then return i
contract CountdownContract {
    function countDown(uint256 n) public pure returns (uint256) {
        uint256 i = n;
        while (i > 2) {
            i--;
        }
        return i;
    }
}




contract BreakExample {
    function findFirstEven(uint[] memory arr) public pure returns (uint) {
        uint evenNumber = 0;
        for (uint i = 0; i < arr.length; i++) {
            if (arr[i] % 2 == 0) {
                evenNumber = arr[i];
                break; // Exits the loop when the first even number is found
            }
        }
        return evenNumber;
    }
}



contract CountEvenContract {
    function countEven(uint[] memory arr) public pure returns (uint) {
        uint count = 0;
        for (uint i = 0; i < arr.length; i++) {
            if (arr[i] % 2 != 0) {
                continue; // Skips odd numbers
            }
            count++;
        }
        return count;
    }
}




