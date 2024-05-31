# Item Sale Tracker Contract

## Overview
This smart contract, written in Solidity, facilitates the tracking of items sold by a specific owner. It keeps a record of the quantity of each item sold and emits an event whenever an item is sold.

## License
This contract is licensed under the MIT License.

## Features
- Tracks items sold by the owner.
- Emits an event when an item is sold.
- Restricts certain functions to only the owner of the contract.

## Functions
### Constructor
- Initializes the contract owner as the address that deployed the contract.

### `sellItem(uint256 _itemId, uint256 _quantity)`
- Allows the owner to sell a specified quantity of an item.
- Parameters:
  - `_itemId`: The unique identifier of the item being sold.
  - `_quantity`: The quantity of the item being sold.
- Modifiers:
  - `onlyOwner`: Ensures that only the owner can call this function.
- Checks:
  - Ensures the quantity is positive.
  - Asserts that the quantity is within a reasonable range (up to 100 units).
  - Reverts the transaction if the quantity exceeds 10 units with a custom error message.
- Effects:
  - Updates the `itemsSold` mapping with the quantity of items sold.
  - Emits an `ItemSold` event with the item ID and quantity sold.

## Usage
1. Deploy the contract to the Ethereum network.
2. Interact with the contract using an Ethereum wallet or any application that supports smart contract interaction.
3. Call the `sellItem` function to sell items and track sales.

## SPDX-License-Identifier
This contract is licensed under the MIT License. See the SPDX-License-Identifier tag within the contract for details.

