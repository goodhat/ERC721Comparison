// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract MyERC721Enumerable is ERC721Enumerable {
    constructor() ERC721("MyERC721A", "721A") {}

    function mint(uint256 num) external {
        uint256 _tokenId = totalSupply();
        for (uint256 i = 0; i < num;) {
            _safeMint(msg.sender, _tokenId + i);
            unchecked {
                ++i;
            }
        }
    }
}
