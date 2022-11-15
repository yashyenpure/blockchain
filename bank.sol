pragma solidity 0.4.25;

contract demo{
    address private owner;
    uint256 private balance;

    constructor() public{
        owner=msg.sender;
    }

    function Deposite(uint256 money) public returns(string){
        balance=balance+money;
        return "Your account is credited";
    }

    function Withdraw(uint256 money) public returns(string){
        balance-=money;
        return "your account has been debited";
    }

    function getBalance() public view returns(uint256){
        return balance;
    }
}
