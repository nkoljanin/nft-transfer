const Migrations = artifacts.require("Migrations");
const NFToken = artifacts.require("NFToken")

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(NFToken);
};
