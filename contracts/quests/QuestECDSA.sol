//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import {ECDSA as ECDSALib} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {Quest} from "../Quest.sol";

contract QuestECDSA {
    using ECDSALib for bytes32;

    /**
     * @notice This quest is about the basic cryptography.
     */
    function verifySignature(bytes memory signature) public {
        bytes32 hashToSign = keccak256(
            abi.encodePacked(msg.sender, address(this))
        );
        address recovered = hashToSign.recover(signature);
        require(msg.sender == recovered, "Invalid signature");
        Quest.solve(QuestECDSA(address(0)).verifySignature.selector, msg.sender);
    }
}
