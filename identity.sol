// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract kartik
{

    struct student{
        string name;
        uint marks;
    }

    // student public s1;
    mapping(uint => student) public user;

    function setter(uint roll , string memory name , uint marks ) public
    {
        user[roll] = student(name , marks);
    }

   
}