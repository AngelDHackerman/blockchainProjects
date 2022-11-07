// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// ? Open zeppelin, Safe Math. Lo que hace es evitar el overflow de un contador,
// ? similar al contador de kilometros de un vehiculo, aqui se evita que al llegar al maximo no se reinicie a 0.
// ? este tipo de importaciones debe ser hecho desde RemixIde. 

// todo: import "@openzeppelin/contracts/utils/math/SafeMath.sol";  // asi podemos llamar a la libreria sin instalar nada de npm, esta es la ruta que vemos en el repo de github.

contract importacion { 

    function sumarNumeros(uint numero1, uint numero2) public pure returns (uint) { 
        return numero1 + numero2;
        
        // todo: return SafeMath.add(numero1, numero2);
    }
}


