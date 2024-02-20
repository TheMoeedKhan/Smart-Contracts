//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasConsumeQuiz{
    uint public StateVariable;
    
    constructor(){
        StateVariable = 1445;
    }

    function setToZero() public{    //This Function Consumes Less Gas than setToOne Function()
        StateVariable = 0;
    }

    function setToOne() public {    //This Function Consumes More Gas
        StateVariable = 1;
    }
}