pragma solidity 0.4.24;

contract problem3 {
    struct Student {
        uint ID;
        address father;
    }
    
    mapping(address => mapping(address => Student[])) public studentList;
    
    constructor () public {
    }
    
    function addStudent(address schoolAddress, address classAddress, uint studentID, address _father) public {
        studentList[schoolAddress][classAddress].push(Student(studentID, _father));

    }
    
    function viewStudentID(address schoolAddress, address classAddress, uint index) public view returns (uint) {
        return studentList[schoolAddress][classAddress][index].ID;
    }
}
