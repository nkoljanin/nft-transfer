// nft 0x3230654806417aB98c8d9CC91120F28650c12652
// owner 0x7532073d11d8bb0654Eb6c7633525ED7b5218b3E

pragma solidity >=0.4.22 <0.9.0;

import "./OpenZeppelinNft.sol";

contract Exchange is ERC20 {

    OpenZeppelinNft internal _nft;

    constructor(address nftAddress) {
        owner = msg.sender;
        _nft = OpenZeppelinNft(nftAddress);
    }

    function mintNFT() external {
        _nft._mint(msg.sender, tokenId);
    }

    function transfer() external {
        _id = _nft.awardItem();
        _nft.approve(msg.sender, _tokenId);

        _nft.transferFrom(address(0x17830DbE34579baeDcD5C16AcFA0Ca9DcbDf2Eda), msg.sender, _tokenId);
    }
}
