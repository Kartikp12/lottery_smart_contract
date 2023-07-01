pragma solidity >= 0.5.0 < 0.9.0;
contract hello
{
   function change(uint index , uint value) public 
   {
         arr[index] = value;
   }


   uint [] public arr;

   function  setter(uint item) public {
      arr.push(item);

   }

   function length() public view returns(uint){
     return arr.length;
   }
}