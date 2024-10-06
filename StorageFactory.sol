// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "./Storage.sol";

contract StorageFactory {
    Storage[] public storageContracts;

    function createStorageContract() public {
        Storage storageContract = new Storage();
        storageContracts.push(storageContract);
    }

    function getStorageContract(uint256 _index) public view returns (Storage) {
        return storageContracts[_index];
    }
}
