// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/proxy/Clones.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";

contract Factory {
    using Address for address;

    string public name;
    string public version;

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    mapping(string => address) public implementations;
    mapping(address => address[]) public clones;

    event ProxyCreated(address indexed proxyAddress, string indexed collectionType);
    event implementationSet(string indexed collectionType, address newImplem);

    constructor(string memory _name, string memory _version, address admin) {
        name = _name;
        version = _version;
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
    }

    function setImplem(string calldata collectionType, address newImplem) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(newImplem.isContract(), "newImplem address is not a contract address");

        implementations[collectionType] = newImplem;
        emit implementationSet(collectionType, newImplem);
    }

    function createCloneProxy(string calldata collectionType, bytes memory initializer) external returns (address) {
        require(implementations[collectionType] != address(0), "Implementation type does not exist");

        address clone = Clones.clone(implementations[collectionType]);

        if (initializer.length > 0) {
            clone.functionCall(initializer, "Error with the contract init");
        }

        clones[msg.sender].push(clone);

        emit ProxyCreated(proxyAddress, collectionType);

        return clone;
    }


}