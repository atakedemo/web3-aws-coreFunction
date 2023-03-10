// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract NftLogic {
    address private addressAdmin;

    constructor() {
        addressAdmin = msg.sender;
    }

    function checkCaller(address caller, address recipient, uint id) 
        public view returns (bool)
    {
        bool _result;
        _result = (caller != address(0) && recipient != address(0) && id !=0);
        return _result;
    }

    function upgradeAdminTo(address _address)
        private
    {
        require(msg.sender == addressAdmin);
        addressAdmin = _address;
    }
}