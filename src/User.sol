pragma solidity 0.8.10;

import "forge-std/Vm.sol";
import "src/TicTacToken.sol";

// helper contract that can act as a mock user in all the tests
contract User {
    TicTacToken internal ttt;
    Vm internal vm;

    address internal _address;

    constructor(address address_, TicTacToken _ttt, Vm _vm) {
        _address = address_;
        ttt = _ttt;
        vm = _vm;
    }

    function markSpace(uint256 space) public {
        vm.prank(_address);
        ttt.markSpace(space);
    }
}
