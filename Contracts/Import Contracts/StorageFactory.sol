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

        function storageFactoryStore (uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // in order to interact with contracts we need :=
        //address
        //ABI
        SimpleStorage simpleStorage = simpleStorageList[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);

    }

    function storageFactoryGet (uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage simpleStorage = simpleStorageList[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }
    
}