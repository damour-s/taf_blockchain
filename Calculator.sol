// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract GetNumbers {
    uint256 public A;
    uint256 public B;

    constructor(uint256 _A, uint256 _B) {
        A = _A;
        B = _B;
    }
}

contract Calculator is GetNumbers {

    constructor(uint256 _A, uint256 _B) GetNumbers(_A, _B) {}

    function checkModulo() public view returns (uint256) {
        require(B != 0, "Divisor cannot be zero");
        return A % B;
    }

    function divideInput() public view returns (uint256) {
        require(B != 0, "Divisor cannot be zero");
        require(A >= B, "Dividend must be greater than or equal to divisor");
        require(A % B == 0, "No remainder allowed");

        return A / B;
    }

    function isEvenOrOdd() public view returns (string memory) {
        if (A % 2 == 0) {
            return "Even";
        } else {
            return "Odd";
        }
    }
}
