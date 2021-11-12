//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import {Quest} from "./Quest.sol";
import {Proxy} from "@openzeppelin/contracts/proxy/Proxy.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract DevInRes is Proxy, Ownable {
    function registerQuest(bytes4 sig, address questContract) public onlyOwner {
        Quest.Store storage store = Quest.store();
        require(store.questContracts[sig] == address(0), "Already registered");
        store.questContracts[sig] = questContract;
    }

    function score() public {
        Quest.solve(DevInRes(payable(address(0))).score.selector, msg.sender);
    }

    function hasSolved(bytes4 sig, address solver) public view returns (bool) {
        Quest.Store storage store = Quest.store();
        return store.solved[sig][solver];
    }

    function getQuestContract(bytes4 sig) public view returns (address) {
        Quest.Store storage store = Quest.store();
        return store.questContracts[sig];
    }

    function getScore(address solver) public view returns (uint256) {
        Quest.Store storage store = Quest.store();
        return store.leaderBoard[solver];
    }

    function _implementation() internal view override returns (address) {
        Quest.Store storage store = Quest.store();
        address questContract = store.questContracts[msg.sig];
        require(questContract != address(0), "Not a registered quest");
        return questContract;
    }
}
