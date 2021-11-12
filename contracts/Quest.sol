//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

library Quest {
    event SolvedQuest(bytes4 indexed questSig, address devInRes);

    bytes32 internal constant STORAGE_SLOT =
        bytes32(uint256(keccak256("dev-in-res")) - 1);

    struct Store {
        address admin;
        mapping(address => uint256) leaderBoard;
        mapping(bytes4 => mapping(address => bool)) solved;
        mapping(bytes4 => address) questContracts;
    }

    function store() internal pure returns (Store storage r) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            r.slot := slot
        }
    }

    function solve(bytes4 questSig, address solver) internal {
        Store storage strg = store();
        mapping(address => bool) storage quest = strg.solved[questSig];
        require(!quest[msg.sender], "Already solved");
        quest[solver] = true;
        strg.leaderBoard[msg.sender] += 1;
        emit SolvedQuest(questSig, msg.sender);
    }
}
