// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract pay{

    address payable user = payable(0x617F2E2fD72FD9D5503197092aC168c91465E7f2);
    function PayEther() public payable
    {

    }

    function showbalance() public view returns(uint)
    {
        return address(this).balance;
    }

    function payacc() public 
    {
        user.transfer(2 ether);
    }
}