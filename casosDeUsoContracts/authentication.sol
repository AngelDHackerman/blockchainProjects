// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract authentication { 

    mapping (address => bool) public users; // ? Este mapping se llama "users", y va a relacionar una direccion de una wallet "address" con un booleano
                                            // ? Si el valor es "true" el usuario esta autenticado, si es "false" no lo esta. 

    function authenticate () public { // ? Esta es la funcion que autentica la direccion que le pasemos. 
        users[msg.sender] = true; 
    }

}