pragma solidity 0.4.24;

contract problem1 {
    mapping(address => uint[]) public addressList;
    constructor () public {
        addressList[0xca35b7d915458ef540ade6068dfe2f44e8fa733c].push(1);
    }
    
    function viewUintArray(address key1) public view returns (uint[]) {
        return addressList[key1];
    }
    
    function changeUintArray(address key1, uint value1) public {
        addressList[key1].push(value1);
    }

}
