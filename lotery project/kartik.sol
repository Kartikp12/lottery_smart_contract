// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract lottery{
    address public manager;

    address payable[] public parti;

    constructor()  
    {
        manager = msg.sender;
    }

    receive() external payable
    {
        require(msg.value==1 ether);
        parti.push(payable(msg.sender));
    }

    function checkBalance() public view returns(uint)
    {
        require(msg.sender == manager);
        return address(this).balance;
    }

    function random() public view returns(uint){
        return(uint(keccak256(abi.encodePacked(block.difficulty , block.timestamp , parti.length))));
    }

    function selectWinner() public
    {
        require(parti.length >= 3 );
        require(msg.sender == manager);
        uint a = random();
        uint index = a%parti.length;
        address payable winner= parti[index];
        winner.transfer(2 ether);
    }

}