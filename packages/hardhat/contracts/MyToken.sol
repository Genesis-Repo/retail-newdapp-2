// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("MyToken", "MTK") {
        _mint(msg.sender, 1000000000000000000000000); // Mint 1,000,000 tokens, considering 18 decimal places
    }

    // Allowing token holders to burn (destroy) their own tokens, reducing the total supply
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}