// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract Storage {
    uint256 public number;

    function store(uint256 _num) public virtual {
        number = _num;
    }

    function retrieve() public view returns (uint256) {
        return number;
    }
}
