const NFToken = artifacts.require("NFToken");

contract('MyNFT', (accounts) => {

    it('Issue one NFT and send to address', async () => {
        const myNFT = await NFToken.deployed();

        await myNFT.mintNFT(accounts[0], 1, { from: accounts[0] });

        const balance = await myNFT.balanceOf.call(accounts[0]);

        await myNFT.safeTransferFrom(accounts[0], accounts[1], 4, null, { from: accounts[0] })

        const balance1 = await myNFT.balanceOf.call(accounts[1]);
        console.log(balance);
        //assert.isTrue(balance.valueOf() > 0, "To less in origin token");
    });

});

