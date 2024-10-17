// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SimpleStorage{
    uint256 myFavoriteNumber;
    uint256 public myFavNum = 88; 

    function store(uint256 _favNum) public {
        myFavNum = _favNum;
        retrieve();
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    struct Person{
        string name;
        uint256 FavoriteNumber;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavouriteNumber;
    // default value for a key is 0

    function addPerson(string memory _name, uint256 _favouriteNum) public {
        listOfPeople.push(Person(_name, _favouriteNum));
        nameToFavouriteNumber[_name] = _favouriteNum;
    }
}