// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract recepcion { 

    mapping (address => uint) balances;
    uint public saldoEnviado;

    // ? receive es una funcion limpia (porque no recibe parametros) 
    receive () external payable { // external, significa que puede ser leido desde fuera del contrato
        balances[msg.sender] += msg.value;
    }

    fallback () external payable {

    }

    function recibirSaldo(uint numero) public payable { 
        saldoEnviado = msg.value;

        uint monto =  numero;
    }
}