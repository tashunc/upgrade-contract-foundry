// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "./ECR20BaseToken.sol";
import "clones-with-immutable-args/ClonesWithImmutableArgs.sol";

contract ERC20CloneFactory {
    using ClonesWithImmutableArgs for address;
    ECR20BaseToken immutable implementation;

    constructor(ECR20BaseToken implementation_) {
        implementation = implementation_;
    }

    function createClone(
        string memory name,
        string memory symbol,
        uint256 totalSupply
    ) external returns (ECR20BaseToken clone) {
        bytes memory data = abi.encodePacked(name, symbol, totalSupply);
        clone = ECR20BaseToken(address(implementation).clone(data));
    }
}
