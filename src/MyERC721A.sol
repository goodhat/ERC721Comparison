// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC721A.sol";

contract MyERC721A is ERC721A {
    constructor() ERC721A("MyERC721A", "721A", 1000) {}

    function mint(uint256 num) external {
        _safeMint(msg.sender, num);
    }
}
