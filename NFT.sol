pragma solidity ^0.5.17;

import "https://github.com/snaketh4x0r/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721Full.sol";
import "https://github.com/snaketh4x0r/openzeppelin-contracts/blob/master/contracts/drafts/Counters.sol";

contract NFTTest is ERC721Full {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721Full("RareFish", "RFI") public {
    }

    function mintToken(address _reciever, string memory tokenURI) public returns (uint256) {
        _tokenIds.increment();

        uint256 newTokId = _tokenIds.current();
        _mint(_reciever, newTokId);
        _setTokenURI(newTokId, tokenURI);

        return newTokId;
    }
}