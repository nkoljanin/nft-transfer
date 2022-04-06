
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/nibbstack/erc721/blob/master/src/contracts/tokens/nf-token-metadata.sol";
import "https://github.com/nibbstack/erc721/blob/master/src/contracts/ownership/ownable.sol";
import "https://github.com/nibbstack/erc721/blob/master/src/contracts/tokens/erc721.sol";


contract MyNFT is ERC721 {
    constructor() ERC721('MyToken', 'MyT') {
        _mint(msg.sender, 1);
    }

    function transferTokenTo(address _from, address _to, uint256 _tokenId) public {
        require(_from == ownerOf(_tokenId), "Not the owner of this token");
        approveAddress(_from, _tokenId);
        safeTransferFrom(_from, _to, _tokenId);
    }

    function approveAddress(address _from, uint256 _tokenId) public {
        approve(_from, _tokenId);
    }
}