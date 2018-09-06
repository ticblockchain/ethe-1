pragma solidity 0.4.24;

contract test3 {
    mapping(uint => address[]) public addressList;
    constructor () public {
        addressList[1].push(0xca35b7d915458ef540ade6068dfe2f44e8fa733c);
    }
    
    function viewAddressArray(uint key1) public view returns (address[]) {
        return addressList[key1];
    }
    
    function changeAddressArray(uint key1, address value1) public {
        addressList[key1].push(value1);
    }

}
