# Smart Contracts:

- Create package.json file as shown and run npm i
- Run the command: npx hardhat
- Select basic sample project
- Run the command npx hardhat test - to test if everything is working
- Add code in Contracts/Transactions.sol file

# Deploying Smart Contracts:
- Go to smart_contract/scripts/deploy.js(create this file and add the deploy code as in this file)
- Add Ethereum to your wallet to continue. You can add dummy ethereum to your wallet by using the following steps:
    - Visit https://faucet.egorfine.com/ or https://faucet.dimensions.network/
    - Add your wallet address in the input field and click on "Give me Ropsten ETH!" button
    - Create an account in Alchemy > Create an app and copy HTTP Key from View Key Section
    - Edit hardhat.config.js file to include your secret keys and settings

- Run the command: npx hardhat run scripts/deploy.js --network rinkeby
- This command will create a smart contract
- Copy the address received in the terminal, add it into contractAddress variable inside client/src/utils/constants.js file
- Copy Transactions.json file from smart_contract/artifacts/contracts/Transactions folder to client/src/utils folder


# Difference between Events and Functions in Solidity language:

- https://levelup.gitconnected.com/events-vs-functions-in-solidity-3d6e797f349e
