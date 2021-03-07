pragma solidity ^0.6.0;

contract MyContract {
    //State Variables - can be accessed by ny function
    string public myString = "Hello, World!";
    bytes32 public myBytes = "Hello, World!";
    int public myInt = 1;
    uint public myUint = 1;
    int256 public myInt256 = 1;
    uint8 public myUint8 = 1;
    //address public mAddress = 0x449933;
    
    struct Person {
        uint id;
        string name;
    }
    
    Person public myStruct = Person(1, "Gulab Patel");
    
    
    
    // Local Variables - used inside function
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
    
     function getMyUint() public view returns(uint) {
        return myUint;
    }
}
