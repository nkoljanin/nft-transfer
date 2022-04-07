// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./erc721.sol";
import "./nf-token.sol";
import "./erc721-token-receiver.sol";


contract OriNFT is NFToken {
    NFToken internal nft;
    ERC721TokenReceiver internal TokenReceiver;
    event NFTStaked(address staker, uint256 tokenId);

    function onERC721Received(address operator, // address which called SafeTransferFrom
        address from, // NFT owner
        uint256 tokenId,
        bytes calldata data) external override returns (bytes4) {
            stakeNFT(from, tokenId);
            return ERC721TokenReceiver.onERC721Received.selector;
    }

    struct Stakes {
        address from;
        uint256 tokenId;
    }
    mapping (address => Stakes) stakedNFT;

    constructor() {
        //_mint(msg.sender, 1);
    }

    function investNFT(address staker, uint256 tokenId) public {
        /*
        ERC721 token = ERC721(contract);
        require(_nft._exists(tokenId), "ERC721: operator query for nonexistent token");
        require(getApproved);
        require(token.balanceOf, "Sender must own the NFT");
        _nft.transferTokenTo(_msgSender(), address, tokenId);
        */
        nft.approve(staker, tokenId);
        nft.safeTransferFrom(staker, address(this), tokenId);
    }

    function stakeNFT(address staker, uint256 tokenId) public {
        // add staker address to array of stakers and save the token id
        //stakedNFT[staker].from = staker;
        //StakedNFT[staker].tokenId = tokenId;
        //Stakes(staker, tokenId);
    }

/*
    function transferTokenTo(address _from, address _to, uint256 _tokenId) public {
        require(_from == ownerOf(_tokenId), "Not the owner of this token");
        approveAddress(_from, _tokenId);
        safeTransferFrom(_from, _to, _tokenId);
    }

    function approveAddress(address _from, uint256 _tokenId) public {
        approve(_from, _tokenId);
    }
    */
}
