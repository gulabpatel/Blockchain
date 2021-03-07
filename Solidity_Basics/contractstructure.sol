pragma solidity ^0.6.0;

contract Counter {
    //1,2,3...positive integers
    uint public count = 10;
    
    function incrementCount() public {
        count += 10;
    }
}
