pragma solidity ^0.5.0;
contract Test{
    uint age;
    string name;
    constructor ()public{
        age=60;
    }
    function check() public view returns (string memory)
    {
        if(age>60)
        {
            return "Age is greter than 60";
        }
        else
        {
            return "Age is less than 60";
        }
    }
//take input
    function takeName(string memory username) public{
        name=username;
    }

    function dispayName() public view returns(string memory)
    {
        return name;
    }
}
