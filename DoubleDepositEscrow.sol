pragma solidity ^0.8.0;

contract DoubleDepositEscrow {
    address payable public buyer;
    address payable public seller;
    uint public paymentAmount;
    uint public depositAmount;
    bool public buyerDeposited;
    bool public sellerDeposited;
    bool public isApproved;
    
    constructor(address payable _buyer, address payable _seller, uint _paymentAmount, uint _depositAmount) {
        require(_depositAmount > _paymentAmount, "Deposit amount must be greater than payment amount");
        buyer = _buyer;
        seller = _seller;
        paymentAmount = _paymentAmount;
        depositAmount = _depositAmount;
        buyerDeposited = false;
        sellerDeposited = false;
        isApproved = false;
    }
    
    function buyer_deposit() payable public {
        require(msg.sender == buyer, "Only buyer can deposit.");
        require(!buyerDeposited, "Buyer has already deposited.");
        require(msg.value == depositAmount, "Deposit amount should be equal to the deposit amount specified.");
        buyerDeposited = true;      
    }
    
    function seller_deposit() payable public {
        require(msg.sender == seller, "Only seller can deposit.");
        require(!sellerDeposited, "Seller has already deposited.");
        require(msg.value == depositAmount, "Deposit amount should be equal to the deposit amount specified.");
        sellerDeposited = true;
    }
 
    function approve() public {
        require(msg.sender == buyer, "Only buyer can approve.");
        require(!isApproved, "Transaction has already been approved.");
        require(buyerDeposited, "Buyer has not yet deposited");
        require(sellerDeposited, "Seller has not yet deposited");
        isApproved = true;
        seller.transfer(paymentAmount);
        seller.transfer(depositAmount);
        buyer.transfer(depositAmount - paymentAmount);
    }
}
