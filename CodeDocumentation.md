## Functions

### buyer_deposit()
The buyer_deposit() function is called by the buyer to deposit funds into the contract. The function takes no arguments and sends the deposit amount to the contract address. The deposit amount is stored in the contract's buyerDeposit variable.

### seller_deposit()
The seller_deposit() function is called by the seller to deposit funds into the contract. The function takes no arguments and sends the deposit amount to the contract address. The deposit amount is stored in the contract's sellerDeposit variable.

### approve()
The approve() function is called by the buyer to approve the transaction and release the funds to the seller. The function sends the payment amount to the seller, returns the seller's deposit to the seller, and returns the remaining deposit amount to the buyer.

## Variables

### paymentAmount
The paymentAmount variable represents the amount of funds that will be transferred from the buyer to the seller if the transaction is approved.

### depositAmount
The depositAmount variable represents the amount of funds that the buyer and seller must each deposit into the contract in order to initiate the transaction. The deposit amount is specified and initialized when the contract is deployed.
