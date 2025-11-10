
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract BaseBuilderNFT is ERC721URIStorage {
    uint256 public nextId = 1;

    constructor() ERC721("Base Builder NFT", "BBNFT") {}

    function mint(string memory tokenURI) external {
        _safeMint(msg.sender, nextId);
        _setTokenURI(nextId, tokenURI);
        nextId++;
    }
}
