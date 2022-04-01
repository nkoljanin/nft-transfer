// nft 0x3230654806417aB98c8d9CC91120F28650c12652
// owner 0x7532073d11d8bb0654Eb6c7633525ED7b5218b3E

pragma solidity >=0.4.22 <0.9.0;

import "./OpenZeppelinNft.sol";

contract Exchange {
    address owner;

    OpenZeppelinNft internal _nft;

    constructor(address nftAddress) {
        owner = msg.sender;
        _nft = OpenZeppelinNft(nftAddress);
    }

    function mintNFT(uint256 tokenId) external {
        _nft._mint(_msgSender(), tokenId);
    }

    function claimNFT(uint256 tokenId) external {
        require(_exists(tokenId), "ERC721: operator query for nonexistent token");
        _nft.transferFrom(address(this), _msgSender, tokenId);
    }

    function investNFT(uint256 tokenId) {
        require(_exists(tokenId), "ERC721: operator query for nonexistent token");
        require(_msgSender.ownerOf(tokenId), "Sender doesn't own the NFT");
        _nft.approve(_msgSender(), tokenId);
        _nft.transferFrom(_msgSender(), address(this), tokenId);
    }

    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }
}
