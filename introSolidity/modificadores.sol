// SPDX-License-Identifier: GPL-3.0

// ? Los modifiers se ejecutan al inicio de la funcion, para evitar el consumo de Ether y si hay error, salvar ese dinero

pragma solidity >=0.7.0 <0.9.0;

contract modificadores { 

    address private owner;

    constructor () { 
        owner = msg.sender;
    }

    function Suma (uint numero1, uint numero2) public view EsOwner() returns (uint) { 
        return numero1 + numero2; 
    }

    modifier EsOwner () {  // Los modifiers son limitadores a las funciones de un contrato
        if (msg.sender != owner) revert(); // si el sender NO es el "owner", se interrumpe la funcion usando el "revert". 
        _; // ! el "_" sirve para indicar que si la condicion NO se cumple, el programa debe seguir. (el _ es lo que finaliza el modifier)
    }
}