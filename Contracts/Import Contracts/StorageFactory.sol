// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

import "../Basics Contracts/SimpleStorage.sol";

// contract SimpleStorage{ 
//     uint256 favouriteNumber;

//     function store(uint256 _favouriteNumber) public {
//         favouriteNumber = _favouriteNumber;
//     }
// }

contract StorageFactory {
    SimpleStorage[] public simpleStorageList;
    function createSimpleStorageContract () public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageList.push(simpleStorage);
    }
}