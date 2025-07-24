// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VariableScoping {
    // Global (state) variable
    uint public globalVar = 100;

    function variableScoping() public view returns (uint, uint, uint) {
        uint sameBar = 10; // Outer local variable
        uint innerVar;
        uint outerVar = sameBar;

        {
            uint sameBar = 5; // Inner block-scoped variable (shadows outer one)
            innerVar = sameBar; // Will store the value 5
        }

        // 'sameBar' here refers to outer variable (value = 10)
        uint outerBlockVar = sameBar;

        return (globalVar, innerVar, outerBlockVar);
    }
}
