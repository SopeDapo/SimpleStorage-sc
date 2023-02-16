// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // Hello all! I'm Sopdap

contract SimpleStorage{
    // boolean, unit, int, address, bytes
    //bool hasFavoriteNumber = true;
    // uint256 favoriteNumber = 5;
    // string favoriteNumberText = " Five";
    // int256 favoriteInt = -5;
    // address myAddresss = 0xf4079AA516bb8a3BdE1B4ceE3E2E895fEC711CBb;
    // bytes32 favoriteBytes = "cat";
     // People public person = People({favoriteNumber: 2, name:"sopdap"});

    uint256 favoriteNumber;

    mapping(string => uint256) public nameToFavoriteNumber;
       
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    //uint256[] public favoriteNumbersList;
    People[] public people;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    //view pure
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    //calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        //people.push(People(_favoriteNumber, name)); // alternatively it can be done below
        // People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        //People memory newPerson = People(_favoriteNumber, _name);
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
