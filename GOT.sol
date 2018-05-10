pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract GOT is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function GOT(address _owner)  UpgradeableToken(_owner) {
    name = "GOT";
    symbol = "GOT";
    totalSupply = 1000000000000000000000000000000;
    decimals = 16;

    balances[_owner] = totalSupply;
  }
}