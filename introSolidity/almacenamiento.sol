// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract almanenamiento { 
    string private nombre;

    constructor ( string memory palabra ) { // los parametros del constructor puede ser almacenados en memoria
        nombre = palabra; 
    }
}