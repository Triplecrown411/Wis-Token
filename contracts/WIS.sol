// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title WIS - Paywise token minimal ERC20
contract WIS is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("paywise", "WIS") {
        _mint(msg.sender, initialSupply);
    }

    // owner-only mint if you want future supply increases
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}

