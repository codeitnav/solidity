// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26; //solidity version 

contract SimpleStorage {

    uint256 public myFavNum = 88; 

    function store(uint256 _favNum) public {
        myFavNum = _favNum;
        retrieve();
    }

    function retrieve() public view returns(uint256){
        return myFavNum;
    }

    // array : uint256[] listOfFavNum;

    struct Person{
        uint256 favNum;
        string name;
    }

    // method 1 : Person public myFriend = Person(5, "Nav");
    // method 2 :
    Person public myFriend = Person({favNum: 5, name: "Nav"});

    // dynamic array - size can vary
    Person[] public listofPeople;

    function addPerson(string memory _name, uint256 _favNum) public {
        _name = "cat";
        listofPeople.push(Person({favNum: _favNum, name: _name}));
    }
    // calldata, memory : the variable (_name here) will exist temporarily, during the duration of function call
    // e.g.: if we called addPerson and gave name "patrick" , it'll store once and we can never call "patrick" again
    // calldata - temporary variable that cannot be modified
    /* e.g.: function addPerson(string calldata _name, uint256 _favNum) public {
        _name = "cat"; 
        listofPeople.push(Person({favNum: _favNum, name: _name}));
    } ----> INVALID 
    */
    
    // only structs, strings and array needs to be given memory/calldata keyword

    // storage - permanent variable that can be modified
    // e.g.: myFavNum - we can store a num & then access it by clicking retrieve
    // any variable createad outside the func but inside the contract is by default a storage variable
}