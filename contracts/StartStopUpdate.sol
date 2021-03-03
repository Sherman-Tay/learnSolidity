pragma solidity ^0.5.13;

contract StartStopUpdate{

    address contractOwner;

    bool paused;

    constructor() public{
        contractOwner = msg.sender;
    }

    function sendMoney() public payable{

    }

    function setPaused(bool _paused) public{
        require(msg.sender == contractOwner,"not paused");
        require(!paused,"paused");
        paused = _paused;
    }

    function withdrawAllMoney(address payable _to) public{
        require(msg.sender == contractOwner,"Failed as not contract owner");
        _to.transfer(address(this).balance);
    }

    function destroySmartContract(address payable _to) public {
        require(msg.sender == contractOwner,"Not the owner!");
        selfdestruct(_to);
    }
}