// SPDX-License-Identifier: MIT


pragma solidity >=0.6.0 <0.9.0; //Solidity Verison, this says from version 0.6.0 (included) to 0.9.0 (Not-Included)

contract SimpleStorage { // Creating a Contract

uint256 favoriteNumber;



struct People { // Building a Struct

uint256 favoriteNumber;

string name;

}

People[] public people; // an arrays of a "People" Struct

mapping(string => uint256) public nameToFavoriteNumber; // Helps you to map, means that you can enter a name (String) of a person and get their favoriteNumber (uint256)

function store(uint256 _favoriteNumber) public {

favoriteNumber = _favoriteNumber;

}

function retrieve() public view returns (uint256){

return favoriteNumber;

}

function addPerson(string memory _name, uint256 _favoriteNumber) public {

people.push(People(_favoriteNumber, _name)); // adding the new person to the "People" array
nameToFavoriteNumber[_name] = _favoriteNumber; // adding the new person to the mapping struct, that is would be found.

}

}
