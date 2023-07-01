pragma solidity >= 0.5.0 < 0.9.0;

contract kartik{

    struct student{
        string name;
        uint class;
    }

    mapping(uint roll => student) public data;

    function setter(uint roll ,  string memory namee , uint classs) public 
    {
        data[roll] =  student(namee , classs);
    }
}