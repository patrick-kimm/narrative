// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;
import {TokenInfo} from "src/Common.sol";

interface IRebalancer {
    function rebalanceCallback(
        TokenInfo[] calldata required,
        TokenInfo[] calldata received
    ) external;
}
