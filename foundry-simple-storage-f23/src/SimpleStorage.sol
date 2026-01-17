// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage{
    uint256 public favoriteNumber;

    uint256[] public listFavorite;

    struct Persion{
        string name;
        uint256 age;
    }

    mapping(string => uint256) public nameToOrder;

    Persion[] public listPersion;

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
        listFavorite.push(_favoriteNumber);
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function createPersion(string memory _name, uint256 _age) public returns(Persion memory){
        listPersion.push(Persion(_name, _age));
        nameToOrder[_name] = listPersion.length -1; 
        return listPersion[listPersion.length - 1];
    }
}