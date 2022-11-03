// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract structsArrays {

    struct Alumno {  // Asi se declara un struct
        string nombre;
        uint documento;
    }

    Alumno[] public alumnos;  // Asi se declara un array, siendo de tipo "Alumno"

    constructor() { 
        alumnos.push(Alumno({ nombre: 'Juan', documento: 12345 }));  // Asi se agrega (push) un elemento a nuestro array
    }
}