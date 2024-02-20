// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Automotive{

    //Variables
    address public owner;
    mapping(address => bool) public buyers;
    string public vehicleModel;
    string public vehicleMake;
    uint public price;

    //Events
    event Purchase (address buyer, string vehicleMake, string vehicleModel, uint price);

    //constructor
    constructor()       
    {
        owner = msg.sender;
    }

    //functions
    
    function buyVehicle(string memory name, string memory model_year) public payable{
        require(msg.value >= price);
        require(buyers[msg.sender] == false);
        vehicleMake = name;
        vehicleModel = model_year;
        buyers[msg.sender] == true;
        emit Purchase(msg.sender, name, model_year, price);
    }

    function setPrice(uint price) public {
        require(msg.sender == owner);
    }

    function checkOwnerShip() public view returns (bool){
        return buyers[msg.sender];
    }
}