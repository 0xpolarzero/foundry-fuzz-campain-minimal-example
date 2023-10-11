// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";

import {CounterScript} from "../../script/Counter.s.sol";
import {Counter} from "../../src/Counter.sol";

import {Handler} from "./Handler.t.sol";

contract InvariantsTest is StdInvariant, Test {
    Counter counter;

    function setUp() external {
        counter = new Counter();

        Handler handler = new Handler(counter);
        targetContract(address(handler));
    }

    function invariant_numberShouldAlwaysBePositive() external view {
        assert(counter.number() >= 0);
    }
}
