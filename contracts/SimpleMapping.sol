pragma solidity ^0.5.16;

contract SimpleMapping{
    // map key to value
    //map unsigned int into a bool
    struct Payment{
        uint amount;
        uint timestamps;
    }

    struct Balance{
        uint totalBalance;
        uint numPayments;
        mapping(uint =>Payment) payments;
    }

    mapping(address =>bool) public myAddressMapping;
    mapping(address => Balance) public balanceReceived;
    //set values w func

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function sendMoney() public payable {
        balanceReceived[msg.sender].totalBalance +=msg.value;

        Payment memory payment = Payment(msg.value,now);

        balanceReceived[msg.sender].payments[balanceReceived[msg.sender].numPayments] = payment;
        balanceReceived[msg.sender].numPayments++;
    }    function withdrawSome(address payable _to, uint _amount) public{
        require(balanceReceived[msg.sender].totalBalance>=_amount,"Not enough funds to send");
        balanceReceived[msg.sender].totalBalance -= _amount;
        _to.transfer(_amount);
        
    }
    function withdrawAllMoney(address payable _to) public{
        // Store the value of balance to var send, set to 0 in key-value and transfer
        uint balanceToSend = balanceReceived[msg.sender].totalBalance;
        balanceReceived[msg.sender].totalBalance = 0;
        _to.transfer(balanceToSend);
    }

}