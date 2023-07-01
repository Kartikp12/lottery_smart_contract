pragma solidity >= 0.5.0 < 0.9.0;

contract kartik
{
    string [] public students = ["kartik" , "roshan" , "mandar"];

    //using memory
    function mem() public view
    {
        string [] memory s1 = students;
        s1[0]  = "praful";
    }

    //using storage
    function sto() public 
    {
        string [] storage s1 =  students;
        s1[0] = "roshan";

    }

}