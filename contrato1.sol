//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract FirstContract{

    uint256 cedula; 
    string nombre; 
    uint256 edad; 
    // Variables de estado aquellas que darán información en la Blockchain, persisten ahí.
    // Yo pago por escribir en estas variables. Pagamos por escribir, no por leer. 
    // Optimizar el tamaño de las variables. 

    function setData(uint _cedula, string memory _nombre, uint _edad)public{
        cedula = _cedula;
        nombre = _nombre;
        edad = _edad;
    }

    function getId()public view returns(uint){
        // WIhout view there could be a codeline like cedula = 14;
         return cedula;
    }

    function getName()public view returns(string memory){
         return nombre;
    }

    function getAge()public view returns(uint){
         return edad;
    }

    function getFullData() public view returns(uint, string memory, uint){
        return (cedula, nombre, edad);
    }

}

