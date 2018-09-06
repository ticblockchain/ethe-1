pragma solidity 0.4.24;

contract Lottery {
    address public manager;
    address[] public players;
    
    constructor() public {
        manager = msg.sender;
    }
    
    function enterLottery() public payable {
        require(msg.value > .01 ether, "You do not have enough Ethereum to join the lottery.");

        players.push(msg.sender);
    }
    
    function random() private view returns (uint){
        return uint(sha256(block.difficulty, block.number, players));
    }
    
    function pickWinner() public retricted {
        uint index = random() % players.length;
        players[index].transfer(address(this).balance);
        players = new address[](0);
    }
    
    function getPlayers() public view returns (address[]){
        return players;
    }
    
    modifier retricted(){
        require(msg.sender == manager, "You are not authorized");
        _;
    }
}
