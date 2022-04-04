pragma solidity ^0.5.0;
contract C{
    uint public data=30;
    uint internal idata=10;
    function x() public returns (uint){
        data=3; //internal access
        return data;
    }
}
contract Caller{
    C c =new C();
    function f() public view returns (uint)
    {
        return c.data();//external data
    }
}
contract D  is C{
    function y() public returns (uint)
    {
        idata=3;//internal acess
        return idata;
    }
    uint a=1;//local variables
    uint b=2;
    function getresult() public view returns(uint){   
        uint result =a+b;
        return result;// acess the state variables
    }
}
