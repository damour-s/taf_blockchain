// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "./Storage.sol";

contract MultiplyStorage is Storage {

    function store(uint256 _num) public override {
        uint256 multipliedNumber = _num * 2;
        require(multipliedNumber > 5, "Number must be above 5 after multiplication");
        number = multipliedNumber;
    }
}
