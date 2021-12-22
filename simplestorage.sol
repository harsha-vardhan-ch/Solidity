// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

//contract -> similar to class in java,python,c++ 

contract SimpleStorage {
    
    // this will get initialized to 0!
    uint256 favoriteNumber;
    bool favoriteBool;
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    People[] public people;
    //array named as people of type struct people.
    
    mapping(string => uint256) public nameToFavoriteNumber;
    //Each string is mapped with unsigned integer. Integer is passed through the store function
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    //View function promises not to modify the state
    //Pure function promises not to modify the state and does not read
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
    //To retrieve the favorite number.
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }    
    //Add a person and favorite number.
    
}
