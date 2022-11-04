// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Funciones { 
    
    // ? public, esta funcion es accesible desde todo el contrato
    // ? pure, la funcion no toca nada dentro del contrato
    // ? returns(unit), indica que regresa un valor tipo unit
    // ? return, es la palabra clave que nos regresa el valor deseado (tener cuidadoe entre "returns" y "return"

    function Suma(uint numero1, uint numero2) public pure returns(uint) { 
        return numero1 + numero2;
    }

    uint private resultado;  // private, esta variable solo puede ser accedida desde una funcion del contrato, no desde fuera.

    function ObtenerResultado() public view returns (uint) { 
        return resultado; 
    }

}