// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.18;

contract FundMe {
    // sending ETH through a function 
    function fund() public payable {
        // motive: allow users to send $
        // have a minimum $ sent

        // 1. how do we send ETH to this contract?
        // using "payable" keyword make the contracts to be able to hold funds just like wallets
        // msg.value (unit) - number of wei sent with the message
        require(msg.value > 1e18, "didn't send enough ETH"); // 1e18 = 1 ETH = 100000000000000000 wei = 1 * 10 ** 18
    }

    // function withdraw() public {}
}