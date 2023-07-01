pragma solidity >= 0.5.0 < 0.9.0;

struct student{
    uint roll;
    string name;
}

contract structs{

    student public kartik;

    function setter(uint rollno , string memory _name) public 
    {
        kartik.roll = rollno;
        kartik.name  = _name;
    }
}