// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TimeLockedVault {
    // Owner of the vault and the time after which withdrawal is allowed
    address public owner;
    uint public unlockTime;

    // Constructor initializes the vault and sets the unlock time
    constructor(uint _unlockDuration) payable {
        owner = msg.sender;  // Contract deployer is the owner
        unlockTime = block.timestamp + _unlockDuration;  // Time until the vault is unlocked
    }

    // Modifier to allow only the owner to perform certain actions
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    // Modifier to ensure the vault is unlocked before performing actions
    modifier isUnlocked() {
        require(block.timestamp >= unlockTime, "Vault is still locked");
        _;
    }

    // Function for the owner to withdraw Ether after the time lock has expired
    function withdraw() public onlyOwner isUnlocked {
        payable(owner).transfer(address(this).balance);  // Transfers all Ether to the owner
    }

    // Function to check the current balance in the vault
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
