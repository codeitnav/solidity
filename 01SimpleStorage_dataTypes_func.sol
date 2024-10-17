// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26; //solidity version 

contract SimpleStorage {
    // Basic Types : boolean, uint (unsigned int: +ve whole num), int, address, bytes

    bool hasFavNum = true; // variable

    uint256 public favNum = 88; // uint has 256 bits
    // 256 is the max & default

    string favNumInText = "88";
    int200 inter = -88;
    address myAddress = 0xD87F4AC6A2E08287451cE5F82749521AE33A4a98;

    bytes32 favBytes32 = "cat"; // it'll get converted to something like 0x2kgdsi. 
    // bytes represent the hex of whatever mentioned
    // 32 is max but not default i.e. bytes and bytes32 is different

    // all the data types have the default values
    // uint256 default value = 0
    // boolean default value = false


    // functions/methods
    function store(uint256 _favNum) public {
        favNum = _favNum;
        retrieve1();
    }
    // 0xd9145CCE52D386f254917e481eB44e9943F39138

    function retrieve1() public view returns(uint256){
        return favNum;
    }
    function retrieve2() public pure returns(uint256){
        return 7;
        //return favNum; --> error
    }
    // view, pure disallow edit state of func. they DO NOT spend gas
    // view - func will only read state from the blockchain. e.g.: in retrieve() func we're just going to read what our favNum is 
    // pure - disallow even reading from a storage variable
    // however, if a gas costing transaction is calling a view or pure func, it'll cost a gas (called execution cost)

}

// NOTE: everything on evm chain is public data

// visibility -
// public : visible externally and internally (creates a getter function for storage/state variables)
// private: only visible in the current contract
// external: only visible externally (only for functions) - i.e. can only be message-called (via this.func)
// internal: only visible internally