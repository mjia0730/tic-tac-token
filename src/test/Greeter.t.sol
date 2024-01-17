// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "forge-std/Vm.sol";

import "../Greeter.sol";

contract GreeterTest is DSTest {
    Vm public constant vm = Vm(HEVM_ADDRESS);

    Greeter internal greeter;

    function setUp() public {
        greeter = new Greeter("Hello");
    }

}
