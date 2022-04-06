// nft 0x3230654806417aB98c8d9CC91120F28650c12652
// owner 0x7532073d11d8bb0654Eb6c7633525ED7b5218b3E
pragma solidity >=0.4.22 <0.9.0;

import "./MyNFT.sol";

contract Exchange{

    MyNFT internal _nft;

    constructor(address nftAddress) {
        //_nft = OpenZeppelinNft(nftAddress);
    }

    function investNFT(uint256 tokenId) public {
        /*
        ERC721 token = ERC721(contract);
        require(_nft._exists(tokenId), "ERC721: operator query for nonexistent token");
        require(getApproved);
        require(token.balanceOf, "Sender must own the NFT");
        _nft.transferTokenTo(_msgSender(), address, tokenId);
        */
    }

    function withdraw(address _from, address _to, uint256 _tokenID) public {
        //_nft.transferTokenTo(nftaddress, _msgSender(), _tokenID);
    }

    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }
}
