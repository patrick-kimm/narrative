// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IIndexToken is IERC20Upgradeable {
    event MinterSet(address indexed minter);

    ///=============================================================================================
    /// Initializer
    ///=============================================================================================

    function initialize(address _minter) external;

    ///=============================================================================================
    /// State
    ///=============================================================================================

    function minter() external view returns (address);

    ///=============================================================================================
    /// Mint Logic
    ///=============================================================================================

    /// @notice External mint function
    /// @dev Mint function can only be called externally by the controller
    /// @param to address
    /// @param amount uint256
    function mint(address to, uint256 amount) external;

    /// @notice External burn function
    /// @dev burn function can only be called externally by the controller
    /// @param from address
    /// @param amount uint256
    function burn(address from, uint256 amount) external;
}
