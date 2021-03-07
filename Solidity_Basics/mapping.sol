pragma solidity ^0.6.0;

contract MyContract {
    //Mappings
    
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myMapping;
    struct Book {
        string title;
        string Author;
    }
    
    constructor() public {
        names[1] = "Adam";
        names[2] = "Gulab";
        names[3] = "Patel";
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author)  ;      
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author)  ;      
    }
}
