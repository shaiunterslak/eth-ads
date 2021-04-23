// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;

// Import Ownable from the OpenZeppelin Contracts Library
import "@openzeppelin/contracts/access/Ownable.sol";

import "./access-control/Auth.sol";

contract Box is Ownable {
  uint256 private value;

  // Emitted when the stored value changes
  event ValueChanged(uint256 newValue);

  // Stores a new value in the contract
  function store(uint256 newValue) public onlyOwner {
    value = newValue;
    emit ValueChanged(newValue);
  }

  // Reads the last stored value
  function retrieve() public view returns (uint256) {
    return value;
  }
}
