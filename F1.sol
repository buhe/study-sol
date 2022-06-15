// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;
contract Faucet {

    // Give out ether to anyone who asks
    function withdraw(uint withdraw_amount) public payable {

        // Limit withdrawal amount
        require(withdraw_amount <= 100000000000000000);

        // Send the amount to the address that requested it
        payable(msg.sender).transfer(withdraw_amount);
    }

    // Accept any incoming amount
    receive() external payable {}

}