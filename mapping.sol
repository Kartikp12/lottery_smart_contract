pragma solidity >= 0.5.0 < 0.9.0;

contract map
{
    mapping(uint => string) public rollno;
                    
   function setter(uint key , string memory value ) public 
   {
       rollno[key] = value;
   }
}