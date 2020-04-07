pragma solidity ^0.5.0;

contract Adoption {
    /**
    This is an array of Ethereum addresses.
     Arrays contain one type and can have a 
     fixed or variable length. In this case 
     the type is address and the length is 16.
    **/
    address[16] public adopters;

    //Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender;
        return petId;
    }

    //retrieving the adopters
    function getAdopters() public view returns (address[16] memory ) {
        return adopters;
    }
}