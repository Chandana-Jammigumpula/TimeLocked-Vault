# Time-Locked Vault Contract

The Time-Locked Vault contract introduces a time-based restriction on withdrawals. It allows the owner to deposit Ether that can only be withdrawn after a predefined period, enhancing security and promoting long-term holding of funds.

## Purpose

The Time-Locked Vault contract is designed to encourage long-term savings and enhance the security of funds. By enforcing a waiting period before withdrawals, it serves as an effective tool for individuals or entities looking to manage their funds with a time constraint.

## Functionality

- **Ownership:** Similar to the Simple Wallet, the contract designates an owner upon deployment.

- **Deposit with Lock:** The constructor allows an initial deposit of Ether while setting an unlock time based on a specified duration.

- **Timed Withdrawals:** The owner can only withdraw the funds after the unlock time has passed.

- **Balance Inquiry:** Users can check the contract’s Ether balance at any time.

## Use Cases

- **Savings Mechanism:** Encourages long-term savings by preventing premature withdrawals.

- **Escrow Services:** Can act as a simple escrow where funds are held until a certain condition or time is met.

- **Vesting Schedules:** Useful in scenarios like employee compensation where funds are released over time.

## Key Features

- **Time-Based Access Control:** The `isUnlocked` modifier ensures that withdrawals are only possible after the specified unlock time.

- **Immutable Lock Period:** Once set, the unlock time cannot be altered, ensuring the security of the lock period.

- **Eventual Fund Availability:** Provides assurance to the owner that funds will be accessible after the lock period.


