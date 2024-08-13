// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

import "../Basics Contracts/SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    // Override
    // to override function the base contract function must be virtual i.e. function store (uint256 number) public virtual { ... }
    // to override function we need to add override keyword 
    function store (uint256 _favouriteNumber ) public override {
        favoriteNumber = _favouriteNumber + 5;
    }
}