// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions { // Class
    uint256 transactionCount; // Variable

    // Function
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    // Structure
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    // Array of Differential Actions or Array of Objects
    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}