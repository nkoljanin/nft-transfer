const Migrations = artifacts.require("Migrations");
const OpenZeppelinNft = artifacts.require("OpenZeppelinNft")

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(OpenZeppelinNft);
};
