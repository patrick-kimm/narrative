// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

import {TokenInfo} from "src/Common.sol";

interface IIssuance {
    error IssuanceReentrant();
    error IssuanceNoTokens();

    function issue(uint256 amount) external;

    function redeem(uint256 amount) external;
}
