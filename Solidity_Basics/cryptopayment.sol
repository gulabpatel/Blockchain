pragma solidity ^0.6.0;

contract HotelRoom {
    // Vacant
    //Occupied
    
    enum Statuses { Vacant, Occupied }
    Statuses currentStatus;
    
    address payable public owner;
    
    event Occupy(address _occupent, uint _value);
    
    constructor() public {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }
    
    
    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "currently Occupied");
        _;
    }
    
    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough Ether provided");
        _;
    }
    
    receive() external payable onlyWhileVacant {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}
