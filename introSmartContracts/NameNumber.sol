// SPDX-License-Identifier: GPL-3.0

// Este programa retorna el nombre escrito en la variable dentro del contrato.

pragma solidity >=0.7.0 <0.9.0;

contract Asset {
    string name = "PlatziCoin";  // asi se declara una variable 
    int number = 100;

    function getName() public view returns (string memory) { // view, expresa que la funcion solo debe "ver" mas no modificar la variable en cuestion.
        return name;
    }

    function sum(int a, int b) public view returns(int result) { 
        result = a + b + number;
    }
}