// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract DecisionMakingExercise {
    uint256 public a = 300;
    uint256 public b = 12;
    uint256 public f = 47;

    function finalize() public view returns (uint256 Result) {
        uint256 d = 23;

        if (a > f) {
            Result = a * b * d;
        } else {
            Result = 0;
        }
    }
}
