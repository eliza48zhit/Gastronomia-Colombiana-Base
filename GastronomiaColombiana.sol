// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title GastronomiaColombiana
 * @dev Contrato para registrar la herencia culinaria de Colombia en la blockchain.
 */
contract GastronomiaColombiana {
    
    string public platoActual;

    // Al desplegar, el contrato inicia con la famosa Bandeja Paisa
    constructor() {
        platoActual = "Bandeja Paisa: Frijoles, arroz, carne molida, chicharron, huevo, tajada, aguacate y arepa.";
    }

    // Función para actualizar el menú colombiano
    function actualizarMenu(string memory _nuevoPlato, string memory _descripcion) public {
        platoActual = string(abi.encodePacked(_nuevoPlato, ": ", _descripcion));
    }

    // Función para consultar qué se está cocinando en la red
    function leerMenu() public view returns (string memory) {
        return platoActual;
    }
}
