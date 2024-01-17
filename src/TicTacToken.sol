// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.10;

contract TicTacToken {
    string[9] public board;
    uint256 internal _turns;

    function getBoard() public view returns (string[9] memory) {
        return board;
    }

    function markSpace(uint256 space, string calldata symbol) public {
        require(_validSymbol(symbol), "Invalid symbol");
        require(_validTurn(symbol), "Not your turn");
        require(_emptySpace(space), "Already marked");
        board[space] = symbol;
        _turns++;
    }

    function _validTurn(string calldata symbol) internal view returns (bool) {
        return (_turns % 2 == 0) ? _compareStrings(symbol, "X") : _compareStrings(symbol, "O");
    }

    function _emptySpace(uint256 i) internal view returns (bool) {
        return _compareStrings(board[i], "");
    }

    function _validSymbol(string calldata symbol) internal pure returns (bool) {
        return _compareStrings(symbol, "X") || _compareStrings(symbol, "O");
    }

    function _compareStrings(string memory a, string memory b) internal pure returns (bool) {
        return keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b));
    }
}
