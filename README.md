# Dual-Deposit Escrow Smart Contract

This is a simple implementation of a dual-deposit escrow Ethereum smart contract that facilitates a transaction between a buyer and a seller. The contract holds the funds in escrow until the buyer approves the transaction, at which point the funds are released to the seller. It is intended to protect buyers and sellers of any physical or digital good or service from cheating each other.

The implementation presented here is a simpler / general version of the proposal in the following paper (which had additional features that could allow a contract to verify delivery of a known digital good), which proves that the subgame perfect Nash Equilibrium of the Stackelberg Game implied by this contract corresponds to both the buyer and seller behaving in an honest fashion (i.e. not cheating each other), so long as they are both rational: Aditya Asgaonkar, Bhaskar Krishnamachari, “[https://anrg.usc.edu/www/papers/Dual_Deposit_ICBC_2019.pdf|Solving the Buyer and Seller’s Dilemma: A Dual-Deposit Escrow Smart Contract for Provably Cheat-Proof Delivery and Payment for a Digital Good without a Trusted Mediator],” IEEE International Conference on Blockchain and Cryptocurrency (ICBC 2019), Seoul, South Korea, May, 2019.

The implementation has been tested manually on Remix (https://remix.ethereum.org). 

## How it Works
The following figure shows how the implemented contract works, conceptually:
<img src="dde.png" alt="DDE contract illustration" width="600"/>
                                                          

## Features

* Deposit Amount: The contract allows for the deposit amount to be set and initialized to a specific value.
* Payment Amount: The contract allows for the payment amount to be set and initialized to a specific value.
* Escrow Functionality: The contract holds the funds in escrow until the buyer approves the transaction, at which point the funds are released to the seller.

## Caveat: Potential Vulnerabilities
Please note that this contract, which was generated with assistance from ChatGPT, is presented as an illustration only. It may be vulnerable to reentrancy attacks, front-running attacks, DoS attacks, insecure deposit amounts, and no time limit for delivery. Please use caution when deploying this contract in a live environment.

## Usage
To use this contract, simply deploy it to the Ethereum network and have both the buyer and the seller send their deposits to the contract address using the buyer_deposit and seller_deposit functions. Then, the seller should deliver the goods or services to the buyer off-chain.

Once the buyer is satisfied with the goods or services provided, they can approve the transaction by calling the approve function. At this point, the payment amount will be transferred to the seller, the seller's deposit will be returned to the seller, and the remaining deposit amount will be returned to the buyer.

## Future Work
Write and add tests to this repo.

## License
This code is licensed under the BSD 3-Clause License. See License file. 

Developed by:
Autonomous Networks Research Group (ANRG)
University of Southern California
http://anrg.usc.edu/

Contributors:
Bhaskar Krishnamachari (bkrishna@usc.edu)
