// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./interface.sol";

contract polimorfismo { 

    function sumarDesdeContrato(uint numero1, uint numero2, address direccionContrato) 
    public returns(uint) { 
        Suma interfaceSuma = Suma(direccionContrato);
        return interfaceSuma.sumar(numero1, numero2);
    }
}