pragma solidity 0.4.24;

contract test1 {
    mapping(uint => address) public addressList;
    constructor () public {
        addressList[1] = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
    }
    
    function viewAddressList(uint key1) public view returns (address) {
        return addressList[key1];
    }
    
    function changeAddressList(uint key1, address value1) public {
        addressList[key1] = value1;
    }

}
