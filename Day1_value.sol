// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Value {
    // bool public _bool = true;
    // bool public bool1 = !_bool;
    // bool public bool2 = bool1&&_bool;
    // bool public bool3;
    // bool bool4;

    // int
    // int64 public a=10000;
    // int32 public b =1000;
    // int64 c = a+b;
    // uint64 public d = 100;
    // uint public f = 200;
    // address public _address = 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8;
    // address payable public address1 = payable (0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    // bytes4 public _byte = "32";
    // bytes32 public _byte32 = "92424240";
    enum ActionSet {Buy,Hold,Sell}
    ActionSet action = ActionSet.Buy;




}