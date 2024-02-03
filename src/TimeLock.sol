// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {

    //minDelay is how long to wait before executing
    // proposers is the list of proposers
    // executors is the list of executors

    constructor(uint256 minDelay,  address[] memory proposers, address[] memory executors) 
    TimelockController(minDelay, proposers, executors, msg.sender) {}

}