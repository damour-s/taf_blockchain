// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract SimpleStorage{

    uint256 myFavouriteNumber;

    struct Person{
        string name;
        uint favNum;
        uint age;
    }

    Person [] listOfPeople;
    mapping (string => uint) nameToFavnum;

    function addPeople(string memory _name, uint _favNum, uint _age) public {
        // Person[].push;
        listOfPeople.push(Person(_name, _favNum, _age));
        nameToFavnum[_name] = _favNum;
    }

    function getNum(string memory _name) public view returns (uint){
        return nameToFavnum[_name];
    }

    function store(uint _favouriteNumber) public {
        
        myFavouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavouriteNumber;
    }
}

contract GetDetails{
    struct Personal{
        string name;
        string country;
    }

    struct Student{
        uint studentId;
    }

    mapping (uint => Personal) studentToPersonal; //uint, bool, string, address

    function getStudent (string memory _name, string memory _country, uint _studentId) public{
        studentToPersonal[_studentId] = Personal(_name, _country);
    }

    function retrieve(uint _studentId) public view returns (Personal memory){
        return studentToPersonal[_studentId];
    }


}