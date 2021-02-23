pragma solidity ^0.7.4;

contract MyContract{
    // storage vars, events, modifiers, functions
    uint data;
    event DataChanged(uint data);
    //default value is always 0.
    function setData(uint _data) external {
        uint d = _data +1;
        data = d;
        emit DataChanged(data);
    }
}