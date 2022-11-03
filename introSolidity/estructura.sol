// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract estructura { 

    int cantidad;
    uint cantidadSinSigno;  // este es un tipo de entero sin signo, es decir no hay negativos
    address direccion;
    bool firmado;
    
    constructor (bool estaFirmado) { 
        direccion = msg.sender; // Esto hace referencia al usuario que esta creando el contrato.
        firmado = estaFirmado; // Recibimos el valor por parametro y asi sabremos si esta firmado o no el contrato.

    }
}