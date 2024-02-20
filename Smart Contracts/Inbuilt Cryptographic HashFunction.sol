// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HashFunctions{
    
    function Keccak266Function(uint index, string memory name, address location) public pure returns (bytes32){
    return keccak256(abi.encodePacked(index, name, location));
    }

    function SHA256Function (uint index, string memory name, address location) public pure returns (bytes32){
        return sha256(abi.encodePacked(index, name, location));
    }
}