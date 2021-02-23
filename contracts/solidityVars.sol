pragma solidity ^0.5.16;

contract WorkingVariables{
    uint256 public myUint;
    
    function setMyUint (uint _myUint) public {
        myUint = _myUint;
    }
    
    bool public myBool;
    
    function setMyBool (bool _myBool) public{
        myBool = _myBool;
    }
    
    
    //variables wrap around. 0 - 1 = 256
    uint8 public myUint8;
    
    function incrementUint() public{
        myUint8++;
    }
    function decrementUint() public{
        myUint8--;
    }
    
    address public myAddress;
    
    function setAddress(address _myAddress) public{
        myAddress = _myAddress;
    }
    
    function getBalanceOfAddress () public view returns(uint){
        return myAddress.balance/10^18;
    }
    //strings are stored as byte arrays. can be costly, so can store it outside through events etc. 
    
    string public myString = 'hello world';
    
    function setMyString (string memory _myString) public{
        myString = _myString;
    }
}