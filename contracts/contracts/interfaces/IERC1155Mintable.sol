// SPDX-License-Identifier: MIT 
pragma solidity 0.8.20;

interface IERC1155Mintable {
    event Mint(address indexed account, uint256 id, uint256 amount);
    event MintBatch(address indexed account, uint256[] ids, uint256[] amounts);

    function mint(address account, uint256 id, uint256 amount, bytes memory data) external;

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data) external;

}