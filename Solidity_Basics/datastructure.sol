pragma solidity ^0.6.0;

contract MyContract {
    //Array
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["apple","mango","orange"];
    string[] public myArray;
    //2D Array
    uint[][] public array2D = [[1,2,3],[4,5,6]];
    
    function addValue(string memory _value) public {
        myArray.push(_value);
    }
    
    function valueCount() public view returns(uint){
        return myArray.length;
    }
}
