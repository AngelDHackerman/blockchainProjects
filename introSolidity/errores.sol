// SPDX-License-Identifier: GPL-3.0

// ? Los modifiers se ejecutan al inicio de la funcion, para evitar el consumo de Ether y si hay error, salvar ese dinero

pragma solidity >=0.7.0 <0.9.0;

contract errores { 

    address private owner;

    constructor () { 
        owner = msg.sender;
    }

    function Suma(uint numero1, uint numero2) public view EsOwner() returns (uint) { 
        return numero1 + numero2;
    }

    modifier EsOwner () { 
        // ? A diferencia del if, requiere verfica lo que si queremos que suceda.
        // si el sender el es el owner, la funcion puede continuar. Sino se lanza el mensaje de error.
        require(msg.sender == owner, "El usuario no es el creador del contrato");
        _;
    }
}