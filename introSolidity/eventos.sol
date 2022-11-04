// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract estructuraDeControl { 
    uint[] public numeros;  
    string public resultado; 

    event NotificacionDeCondicion(bool condicion);  // Este es el evento que recibira la llamada del emit abajo.

    constructor (bool condicion) { 
        if (condicion) {  
            resultado = 'Condicion True';
        } else { 
            resultado = 'Condicion False';
        }

        emit NotificacionDeCondicion(condicion);  // ! la llamada del evento de arriba se realiza mediante el "emit", el parametro es el valor que queremos que quede registrado.

        for (uint iterator = 0; iterator < 10; iterator++) { 
            numeros.push(iterator);
        }
    }
}

// ? Esto veriamos en los logs de remix IDE: 

// "event": "NotificacionDeCondicion",
// 		"args": {
// 			"0": false,
// 			"condicion": false
// 		}