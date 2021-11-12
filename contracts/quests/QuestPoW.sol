//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import {Quest} from "../Quest.sol";

contract QuestPoW {
    uint256 public constant DIFFICULTY = 20;

    /**
     * @notice This quest is about how to handle the client side code.
     */
    function pow(uint256 nonce) public {
        uint256 val = uint256(
            keccak256(abi.encodePacked(msg.sender, address(this), nonce))
        );
        require(val <= (type(uint256).max >> DIFFICULTY), "Invalid nonce");
        Quest.solve(QuestPoW(address(0)).pow.selector, msg.sender);
    }
}
