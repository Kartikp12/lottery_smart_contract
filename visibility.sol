// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract A
{
    function f1() public pure returns(uint){
        return 1;
    }

     function f2() private pure returns(uint){
        return 2;
    }

    function f3() internal pure returns(uint){
        return 3;
    }

    function f4() external pure returns(uint){
        return 4;
    }
    

    uint public x = f2();
}

contract B is A
{
   uint public bx = f3();
}

contract C 
{
    A obj = new A();
    uint public cx = obj.f1();

}