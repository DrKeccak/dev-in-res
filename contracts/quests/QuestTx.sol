//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import {Quest} from "../Quest.sol";

contract QuestTx {
    /**
     * @notice This quest is about the basic cryptography.
     */
    function run() public {
        Quest.solve(QuestTx(address(0)).run.selector, msg.sender);
    }
}
