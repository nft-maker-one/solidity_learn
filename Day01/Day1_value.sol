// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Value {
    // bool类型
    bool public _bool = true;
    bool public bool1 = !_bool;
    bool public bool2 = bool1&&_bool;
    bool public bool3;
    bool bool4;

    // int类型
    int64 public a=10000;
    int32 public b =1000;
    int64 c = a+b;

    // uint类型
    uint64 public d = 100; //存储空间:0-2^64-1
    uint public f = 200;  //存储空间:0-2^256-1

    // address类型
    address public _address = 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8;
    address payable public address1 = payable (0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    // bytes定长类型
    bytes4 public _byte = "32";
    bytes32 public _byte32 = "92424240";

    // enum类型
    enum ActionSet {Buy,Hold,Sell} //Buy=0,Hold=1,Sell=2
    ActionSet action = ActionSet.Buy;




}