// SPDX-License-Identifier: GPL-3.0

// * este programa envia el ether deseado a la direccion especificada

pragma solidity >=0.7.0 <0.9.0;

contract Fund {
    function sendEther(address payable receiver) public payable { // address payable receiver, es la direccion a donde vamos a mandar el ether.
        receiver.transfer(msg.value);
    }
}