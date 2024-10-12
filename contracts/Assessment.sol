// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Assessment {
    
    uint256 public balance = 0;

    constructor(uint initBalance) payable {
        balance = initBalance;
    }

   
    function getBalance() public view returns (uint256) {
        return balance;
    }

    
    function factorial(uint n) public returns (uint) {
        balance=0;
        if (n == 0) {
            balance = 1; 
            return balance;
        }
        
        uint result = 1;
        for (uint i = 1; i <= n; i++) {
            result *= i;
            balance += result;    
        }

        return balance;  
    }

        function fibonacci(uint n) public returns (uint) {
            balance=0;
        if (n == 0){
            balance = 0;
            return balance;
        }

        if (n == 1){
            balance = 1;
            return balance;
        }
        
        uint a = 0;
        uint b = 1;
        uint result;
        
        for (uint i = 2; i <= n; i++) {
            result = a + b;
            a = b;
            b = result;
            balance+=result;
        }
        
        return balance;
    }
}
