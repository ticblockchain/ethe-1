pragma solidity 0.4.24;

contract test4 {
    mapping(uint => mapping(uint=>uint[])) public schoolList;
    constructor () public {
        schoolList[0][0].push(0);
        //first student
    }
    
    function viewStudent(uint schoolID, uint classID) public view returns (uint[]) {
        return schoolList[schoolID][classID];
    }
    
    function addStudent(uint schoolID, uint classID, uint studentID) public {
        schoolList[schoolID][classID].push(studentID);
    }
}
