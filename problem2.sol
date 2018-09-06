pragma solidity 0.4.24;

contract problem2 {
    mapping(address => mapping(address=>uint[])) public schoolList;
    constructor () public {
        schoolList[0xca35b7d915458ef540ade6068dfe2f44e8fa733c][0x14723a09acff6d2a60dcdf7aa4aff308fddc160c].push(0);
        //first student
    }
    
    function viewStudent(address schoolAddress, address classAddress) public view returns (uint[]) {
        return schoolList[schoolAddress][classAddress];
    }
    
    function addStudent(address schoolAddress, address classAddress, uint studentID) public {
        schoolList[schoolAddress][classAddress].push(studentID);
    }
}
