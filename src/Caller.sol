pragma solidity 0.8.10;

import "src/TicTacToken.sol";

contract Caller {

    TicTacToken internal ttt;

    constructor(TicTacToken _ttt) {
        ttt = _ttt;
    }
    
    function call() public returns (address) {
        return ttt.msgSender();
    }
}
