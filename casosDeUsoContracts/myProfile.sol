// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Este contrato autoriza a nuestros usuarios de que puede y que no puede hacer.

contract Identity { 

    struct BasicInfo { // struct BasicInfo, es el tipo de dato, estara compuesto por "name" y "email". Similar a typeScript
        string name;
        string email;
    }
    struct PersonalInfo { 
        uint salary; 
        string _address;
    }
    enum UserType { 
        Basic,
        Personal
    }

    error UserUnAuthorized (address user, UserType userType);

    // Variables para guaradar informacion de la cuenta 
    BasicInfo private basicInfo;  // ? La variable "basicInfo" sera de tipo "BasicInfo"  y sera visible solo dentro del contrato.
    PersonalInfo private personalInfo;
    address private owner; 

    // Mapping para otorgar permisos de lectura a otras cuentas 
    mapping(address => bool) private basicUsers;
    mapping(address => bool) private personalUsers; 

    constructor (string memory name, string memory email, uint256 salary, string memory _address) { 
        basicInfo = BasicInfo(name, email); 
        personalInfo = PersonalInfo(salary, _address);
        owner = msg.sender;
    }

    // Verificador de autorizacion del usuario 
    modifier authorizeUser (UserType userType) { 
        if (msg.sender == owner || personalUsers[msg.sender]) { 
            _;  // ! "_;" significa que: si la condicion se cumple, dejaremos continuar el codigo
        } else if (userType == UserType.Basic && basicUsers[msg.sender]) { 
            _;
        } else { 
            revert UserUnAuthorized(msg.sender, userType);
        }
    }

    // Solo el owner puede otorgar permisos a otras cuentas 
    modifier onlyOwner () { 
        require(msg.sender == owner, "Only owner can authorize users") ;
        _;
    }

    // Otorgamos permisos de lectura a otra cuenta 
    function registerUser(UserType userType, address user) public onlyOwner { 
        if (userType == UserType.Basic) {
            basicUsers[user] = true;
        } else if (userType == UserType.Personal) { 
            personalUsers[user] = true;
        }
    }

    function getBasicInfo () public view authorizeUser(UserType.Basic) returns (BasicInfo memory) { 
        return basicInfo;
    }

    function getPersonalInfo () public view authorizeUser(UserType.Personal) returns (PersonalInfo memory) { 
        return personalInfo;
    }
}

