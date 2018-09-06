pragma solidity 0.4.24;

contract test6 {
    struct Student {
        uint ID;
        address father;
    }
    
    mapping(address => Student) public studentList;
    
    constructor () public {
    }
    
    function addStudent(address studentAddress, uint studentID, address _father) public {
        studentList[studentAddress].ID = studentID;
        studentList[studentAddress].father = _father;
    }
    
    function viewStudentID(address studentAddress) public view returns (uint) {
        return studentList[studentAddress].ID;
    }
}
