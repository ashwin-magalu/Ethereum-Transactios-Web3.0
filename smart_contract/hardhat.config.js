require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    rinkeby: {
      url: "https://eth-rinkeby.alchemyapi.io/v2/Qty6XzalS4JF17q1p1z8NXYoy0ziVaX0",
      accounts: [
        "aff106d53b3a206af025a694f413b13eb9c1fbf62c28403b19cc4332164f0f4f",
      ], //  Get it from Export private key in Metamask
    },
  },
};
