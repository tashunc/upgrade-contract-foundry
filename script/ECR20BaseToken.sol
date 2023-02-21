// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "clones-with-immutable-args/Clone.sol";

contract ECR20BaseToken is Clone,ERC20 {
    constructor() ERC20("CLONE", "CLN") {
        _mint(msg.sender, 1000 * 10**18);
    }
}
