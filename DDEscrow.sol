pragma solidity ^0.8.0;

contract Escrow {
    address payable public buyer;
    address payable public seller;
    uint public paymentAmount;
    uint public depositAmount;
    bool public isApproved;
    
    constructor(address payable _buyer, address payable _seller, uint _paymentAmount, uint _depositAmount) {
        buyer = _buyer;
        seller = _seller;
        paymentAmount = _paymentAmount;
        depositAmount = _depositAmount;
    }
    
    function buyer_deposit() payable public {
        require(msg.sender == buyer, "Only buyer can deposit.");
        require(msg.value == depositAmount, "Deposit amount should be equal to the deposit amount specified.");
    }
    
    function seller_deposit() payable public {
        require(msg.sender == seller, "Only seller can deposit.");
        require(msg.value == depositAmount, "Deposit amount should be equal to the deposit amount specified.");
    }
    
    function approve() public {
        require(msg.sender == buyer, "Only buyer can approve.");
        require(!isApproved, "Transaction has already been approved.");
        isApproved = true;
        seller.transfer(paymentAmount);
        seller.transfer(depositAmount);
        buyer.transfer(address(this).balance);
    }
}
