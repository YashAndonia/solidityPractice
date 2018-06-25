pragma solidity ^0.4.0;

contract Transaction{
    
    event senderLogger(address);//this creates an event log of being -paid by some persson
    
    event valueLogger(uint);//thuis saves he value sent;
    
    
    address private owner; // address of the person sending money to the contract will go in here.
    
    modifier isOwner{
        require(owner==msg.sender);// this just ensures tht we are sending the money to ourselves, ad nobody elsse
        
        _;
    }
    
    modifier validValue{
        assert(msg.value>=1 ether);
        _;
        
    }
    function Transaction() {
        owner=msg.sender;
        
    }

    function () payable isOwner validValue{//payable is a modifier whihc is availale by default to create fallback functions
    
      senderLogger(msg.sender);
      valueLogger(msg.value);
      //hello!
        
    }
}