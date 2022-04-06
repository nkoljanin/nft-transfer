// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./erc721.sol";

contract MyNFT  {

    constructor() {
        //_mint(msg.sender, 1);
    }
    /*
    function transferTokenTo(address _from, address _to, uint256 _tokenId) public {
        require(_from == ownerOf(_tokenId), "Not the owner of this token");
        approveAddress(_from, _tokenId);
        safeTransferFrom(_from, _to, _tokenId);
    }

    function approveAddress(address _from, uint256 _tokenId) public {
        approve(_from, _tokenId);
    }*/
}
