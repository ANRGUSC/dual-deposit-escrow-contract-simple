# Dual-Deposit Escrow Smart Contract

This is a simple implementation of a dual-deposit escrow Ethereum smart contract that facilitates a transaction between a buyer and a seller. The contract holds the funds in escrow until the buyer approves the transaction, at which point the funds are released to the seller. It is intended to protect buyers and sellers of any physical or digital good or service from cheating each other.

## Features

* Deposit Amount: The contract allows for the deposit amount to be set and initialized to a specific value.
* Payment Amount: The contract allows for the payment amount to be set and initialized to a specific value.
* Escrow Functionality: The contract holds the funds in escrow until the buyer approves the transaction, at which point the funds are released to the seller.

## Vulnerabilities
Please note that this contract is presented as an illustration only. It may be vulnerable to reentrancy attacks, front-running attacks, DoS attacks, insecure deposit amounts, and no time limit for delivery. Please use caution when deploying this contract in a live environment.

## Usage
To use this contract, simply deploy it to the Ethereum network and have both the buyer and the seller send their deposits to the contract address using the buyer_deposit and seller_deposit functions. Then, the seller should deliver the goods or services to the buyer off-chain.

Once the buyer is satisfied with the goods or services provided, they can approve the transaction by calling the approve function. At this point, the payment amount will be transferred to the seller, the seller's deposit will be returned to the seller, and the remaining deposit amount will be returned to the buyer.

## License
This code is licensed under the BSD 3-Clause License. See License file. 

Developed by:
Autonomous Networks Research Group (ANRG)
University of Southern California
http://anrg.usc.edu/

Contributors:
Bhaskar Krishnamachari (bkrishna@usc.edu)
