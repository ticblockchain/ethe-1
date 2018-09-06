pragma solidity 0.4.24;

contract test1 {
    uint public a;
    constructor () public {
        a = 1;
    }
    
    function viewa() public view returns (uint) {
        return a;
    }
    
    function changea(uint value1) public {
        a = value1;
    }

}
