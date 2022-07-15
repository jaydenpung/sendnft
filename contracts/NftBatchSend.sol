// SPDX-License-Identifier: None

pragma solidity >=0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NftBatchSend {
    function batchSendErc721(
        address from,
        address destination,
        address tokenAddress,
        uint256[] calldata tokenIds
    ) public {
        //ERC721(tokenAddress).setApprovalForAll(address(this), true);
        require(from == msg.sender, "Not the same"); //just to be sure
        require(ERC721(tokenAddress).isApprovedForAll(from, msg.sender), "Caller do not have approval for from address");

        for (uint256 i = 0; i < tokenIds.length; i++) {
            ERC721(tokenAddress).safeTransferFrom(
                from,
                destination,
                tokenIds[i]
            );
        }
    }
}
