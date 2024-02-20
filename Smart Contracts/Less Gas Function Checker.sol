//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasChecker{
    function MyName1() pure external returns (string memory) {
        return "Moeed";
    }

    function MyName2() pure external returns (bytes32) {
        return bytes32("Moeed");
    }
}