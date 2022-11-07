// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// * para hacer transacciones, primero debemos darle fondos al contrato. Asi es como se puede enviar el dinero

contract transferencia { 

    constructor () payable { 
        
    }

    function transferenciaPorSend ( address destino, uint monto ) public returns(bool) { 
        bool salida = payable (destino).send(monto);  // ? payable, significa que esa cuenta va a estar recibiendo pagos. 
        return salida;
    }

    function transferenciaPorTransfer ( address destino, uint monto ) public { 
        payable(destino).transfer(monto);
    }

    function transferenciaPorCall ( address destino, uint monto ) public returns (bool) { 
        (bool salida, bytes memory respuesta) = destino.call{value:monto, gas: 1000}(""); //  gas: 1000, aqui se agrega el limite de gas que la transaccion puede tomar
        return salida;
    }
}

// ? Si el contrato se queda sin dinero nos lanzara un mensaje como este: 

// The transaction has been reverted to the initial state.
// Note: The called function should be payable if you send value and the value you send should be less than your current balance.
// Debug the transaction to get more information.