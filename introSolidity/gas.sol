// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract gas { 

    uint public numero;

    function asignarNumero ( uint entrada ) public { 
        numero = entrada;
    }
}