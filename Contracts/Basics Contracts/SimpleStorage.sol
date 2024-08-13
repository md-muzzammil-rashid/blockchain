// SPDX-License-Identifier: MIT
pragma solidity >=0.8.26; // choose which version of solidity to use

// contract is like class
contract SimpleStorage {
    // Common Datatypes => bool, int, uint, address, bytes, string

    bool hasFacoriteNumber = true;

    uint256 public favoriteNumber = 786; // default value is null / 0  // default visibility is internal

    int favoriteNumber2 = -12;

    string favoriteNumberInText = "Seven";

    mapping(string => uint256) public nameToFavNumber;

    // address myAddress = 0x423424244242424988ab786a7b77ba79b7a7b9ab79ab79ba7b9b7a9b79baa9b787;

    // function name(type name) <access spcifier {public private external internal}> {

    // }

    People public person1 = People({favoriteNumber: 7, name: "Ayaan"});
    People[] public people;

    //  Method 1
    // function addPerson (string memory _name, uint256 _favouriteNumber) public {
    // Method 1 of construct
    //     // People memory newPerson = People({favoriteNumber:_favouriteNumber, name:_name});
    // Method 2 of construct
    //     People memory newPerson = People(_favouriteNumber, _name);
    //     people.push(newPerson);
    // }

    //Method 2
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People(_favouriteNumber, _name));
        nameToFavNumber[_name] = _favouriteNumber;
    }

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}
