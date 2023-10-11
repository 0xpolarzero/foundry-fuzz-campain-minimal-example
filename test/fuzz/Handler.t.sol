// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";

import {Counter} from "../../src/Counter.sol";

contract Handler is Test {
    Counter counter;

    constructor(Counter _counter) {
        counter = _counter;
    }

    function setNumber(uint256 newNumber) public {
        counter.setNumber(newNumber);
    }
}
