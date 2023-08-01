# DAY2
## 可见性标识符
+ public
可以被任何人访问和调用，可以修饰状态变量和函数
```solidity
uint public public_ = 10;
```
+ private
只能在当前合约内部被调用或访问，可以修饰状态变量和函数
```solidity
uint private private_ = 10;
```
+ internal可以在当前合约及其派生合约(继承章节会详细讲解)内部被调用或访问，可以修饰状态变量和函数
```solidity
uint internal internal_ = 10;
```
+ external
只能被其他合约调用，而不能在当前合约内部被调用，只可以修饰函数。在合约内部也可以访问，但是要借助this.f()调用
```solidity
function a(int value) external pure returns(int){
    return value;
}

function call() public pure {
    int value = a(10);
}
```

## 函数类型
+ 函数定义形式  
function <函数名> (<参数类型>) {可见性标识符} [函数权限] [returns (<返回值类型>)]

+ 参数类型  
可以是任意的数值类型(bool,int,address....)和引用类型(数组，map,structure...)
```solidity
function getBool(bool a) public pure returns(bool) {
    return a;
}

function getUint(uint a) public pure returns(uint) {
    return a;
}

function getAddress(address a) public pure returns(address) {
    return a;
}

//多参数输入
uint public value;

function Add(uint a,uint b) public returns(uint) {
    value = a + b;
    return value;
}


```

+ 状态变量
存储在区块链上的变量，如果要改写状态变量，则意味着对区块链上的数据情况进行改写(在函数外定义的变量，以及用storage修饰的变量)与之对应的临时变量存储在内存中，不做上链操作   
临时变量就像你的工作桌(空间有限)，它提供了一个快速且易于访问的工作区域，你可以在这里放置你需要处理的文件和工具，以便更快地完成工作。状态变量则类似于远处的文件柜，它提供了一个持久的存储空间(空间大)，你可以在那里存储许多文件和文件夹，以便在需要时随时访问。但还要专门过去拿

```solidity
uint public stateVar = 20;
function temp(uint tempVar) public pure returns(uint) {
    return tempVar;
}
```

+ 函数权限(solidity独有)
在智能合约与以太坊的交互过程中，单纯对区块链数据的读取并不消耗gas(在区块链上矿工帮忙改写数据支付的手续费)，要写的数据越多，支付的手续费越高。所以我们在写数据的过程中应做到丝毫必省，只读数据的函数一律改写成view类型，如果连读数据都不用的函数则写为pure类型，最大程度降低gas的使用
    1. [空缺]，表示对数据可写  
    2. [view]，能读取但也不能写入状态变量
    3. [pure], 不能读取也不能写入存储在链上的状态变量
    4. [payable],在空缺的基础上可以在合约内实现对以太坊(特指以太坊)的转账
```solidity
//空缺情况
uint public empty = 100;
function empty_() public returns(uint) {
    empty = 20;
    return empty;
}

//view情况
function view_() public view returns(uint) {
    return empty;
}

//pure情况
function pure_() public view returns(uint) {
    uint val = 10+10;
    return val;
}

```

+ 返回值类型
返回值类型跟在returns关键字后面，和参数类型一样可以为数值类型或者引用类型，不同的是你可以不具体化出一个实际的返回值类型
```solidity
//实例化返回类型
uint public result;
function resReal() public returns(uint res) {
    result = result +10;
    return res;
}

//不实例化返回类型
function resVir() public returns(uint) {
    result = result+10;
    return result;
}

//补充：uint和int类型变量声明但未赋值的情况下均为默认值0
```