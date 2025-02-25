// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; // Stating the solidity Version

contract SimpleStorage {
    uint256 myFavouriteNumber; // Declaring a variable of type 'uint' (unintialised) has 0 value
    uint256[] listOfFavouriteNumbers;

    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    // Person public myFriend = Person({favouriteNumber : 17,name: "Pat"});

    Person[] public listOfPeople; // [] Dynamic Array

    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(
            Person({favouriteNumber: _favouriteNumber, name: _name})
        );

        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}
