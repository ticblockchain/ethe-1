contract test5 {
    struct Student {
        uint ID;
        address father;
        address closeFriend;
    }
    
    Student public student1;
    
    constructor () public {
        student1.ID = 1;
        student1.father = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
        student1.closeFriend = 0x4b0897b0513fdc7c541b6d9d7e929c4e5364d2db;
    }
    
    function changeCloseFriend(address newFriend) public {
        student1.closeFriend = newFriend;
    }
}
