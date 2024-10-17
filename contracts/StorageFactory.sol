// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
// while working with multiple files, keep the versions in all the file same

import {SimpleStorage} from "./SimpleStorage.sol";


contract StorageFactory{

    // SimpleStorage - referring to contract
    // simpleStorage - referring to variable
    SimpleStorage public simpleStorage;
    SimpleStorage[] public listOfContracts;

    address[] public listOfSimpleStorageAddresses;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage(); // new keyword : helps solidity in identifying to deploy the smart contract 
        SimpleStorage s = new SimpleStorage();
        listOfContracts.push(s);
    }

    // calling a specific func of the external SimpleStorage contract
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNum) public {
        // Address
        // ABI : Application Binary Interface
        //SimpleStorage mySimpleStorage = listOfContracts[_simpleStorageIndex];
        SimpleStorage mySimpleStorage = SimpleStorage(listOfSimpleStorageAddresses[_simpleStorageIndex]);
        mySimpleStorage.store(_newSimpleStorageNum);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }

}

