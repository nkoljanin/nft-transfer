const NFToken = artifacts.require("NFToken");
const OriNFT = artifacts.require("OriNFT");

contract('MyNFT', (accounts) => {

    it('Issue one NFT and send to address', async () => {
        const myNFT = await NFToken.deployed();

        await myNFT.mintNFT(accounts[0], 1, { from: accounts[0] });
        await myNFT.mintNFT(accounts[0], 2, { from: accounts[0] });
        await myNFT.mintNFT(accounts[0], 3, { from: accounts[0] });
        await myNFT.safeTransferFrom(accounts[0], accounts[1], 1);

        const balance = await myNFT.balanceOf.call(accounts[0]);

        const balance1 = await myNFT.balanceOf.call(accounts[1]);
        console.log(balance1);
        //assert.isTrue(balance.valueOf() > 0, "To less in origin token");
    });

    it('Send nft via other contract', async () => {
        const oriNFT = await OriNFT.deployed();

        await oriNFT.investNFT(accounts[1], 1);

    });

});

