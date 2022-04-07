const Migrations = artifacts.require("Migrations");
const NFToken = artifacts.require("NFToken");
const OriNFT = artifacts.require("OriNFT");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(NFToken);
  deployer.deploy(OriNFT);
};
