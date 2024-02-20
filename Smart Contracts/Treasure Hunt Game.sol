// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TreasureHunt {
    address public gameMaster;
    uint public TreasureLocation;

    constructor() {
        gameMaster=msg.sender;
    }

    function setTreasureLocation(uint _NewLocation) external {
        require(msg.sender==gameMaster, "Setting the Treasurenlocation is only up to the gameMaster.");
    TreasureLocation = _NewLocation;
    }
    
    function SetTreasureLocation(uint _NewLocation) external {
        TreasureLocation = _NewLocation;
        require(msg.sender==gameMaster, "Only gameMaster can set up treasure location");
    }
}