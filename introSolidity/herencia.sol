// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./interface.sol";  // asi se importan las interfaces. 
import "./modificadores.sol"; 

contract herencia is Suma, modificadores {  // suma, modificadores; aqui se invocan las importaciones para usarlas en nuestro contrato

    function sumar (uint numero1, uint numero2) public override EsOwner() view returns(uint) {  // function sumar (uint numero1, uint numero2), esto es el encabezado de la interface
        return numero1 + numero2;
    }

}