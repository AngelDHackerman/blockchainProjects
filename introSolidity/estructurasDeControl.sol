// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract estructuraDeControl { 
    uint[] public numeros;  // Esto es un array de numeros (sin signo), es una variable "publica" con nombre "numeros"
    string public resultado; 

    constructor (bool condicion) { 
        if (condicion) {  // Aqui la condicion siempre va a ser true.
            resultado = 'Condicion True';
        } else { 
            resultado = 'Condicion False';
        }

        for (uint iterator = 0; iterator < 10; iterator++) { 
            numeros.push(iterator);
        }
    }
}
