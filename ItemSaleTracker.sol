// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ItemSaleTracker {
    address public owner;
    mapping(uint256 => uint256) public itemsSold;

    event ItemSold(uint256 itemId, uint256 quantity);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function sellItem(uint256 _itemId, uint256 _quantity) public onlyOwner {
        // Using require to check if the quantity is positive
        require(_quantity > 0, "Quantity must be positive");
        
        // Using assert to check if the quantity is within a reasonable range
        assert(_quantity <= 100);

        // Using revert to revert the transaction with a custom error message
        if (_quantity > 10) {
            revert("Quantity exceeds maximum allowed limit");
        }

        // Update the items sold
        itemsSold[_itemId] += _quantity;

        // Emit an event to log the sale
        emit ItemSold(_itemId, _quantity);
    }
}
