// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Saldo { 
    mapping(address => uint) public balance; // => es la separacion entre "clave" y "valor" 

    enum Estado { Iniciado, Finalizado } // En los estados Iniciado = 0, y Finalizado es = 1

    Estado public estadoDelContrato;

    constructor () { 
        estadoDelContrato = Estado.Iniciado;

        balance[msg.sender] = 1000;

        estadoDelContrato = Estado.Finalizado;
    }
}
