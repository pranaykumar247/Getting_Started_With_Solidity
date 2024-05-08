// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Counter{
    // Contract code goes here....

    // Store a numerical value
    // Increase the count
    // Decrease the count
    // Store a name / set name

    // CRUD
    string public name;
    uint public count;    // unsigned integer  (must be positive)


    // Constructor function

    // Without parameter
    // constructor(){
    //     name = "My Counter";
    //     count = 1;
    // }

    // With parameter
    constructor(string memory _name, uint _initialCount){
        name = _name;
        count = _initialCount;
    }

    function increment() public returns (uint newCount){
        // count = count + 1;
        count++;
        return count;
    }

    function multiply() public{
        count = count*5;
    }

    function decrement() public returns (uint newCount){
        count--;
        return count;
    }

    function getCount() public view returns(uint){
        return count;
    }

    function getName() public view returns(string memory currentName){
        return name;
    }

    function setName(string memory _newName) public returns(string memory newName){
        name = _newName;
        return name;
    }
} 


