# SupplyChain
# Blockchain-Based Supply Chain Tracking System

## Introduction

This project is a blockchain-based supply chain tracking system designed to monitor the movement of goods through the supply chain, ensuring transparency and provenance. The system leverages the capabilities of the Scroll blockchain to provide a decentralized and tamper-proof record of product history.

## Features

- **Product Registration**: Register new products with unique IDs and initial locations.
- **Location Update**: Update the location of products as they move through the supply chain.
- **Product History**: View the history of locations for each product.

## Smart Contract

The smart contract is written in Solidity and includes the following core functionalities:

- **registerProduct**: Register a new product with a name and initial location.
- **updateLocation**: Update the current location of a product.
- **getProductHistory**: Retrieve the history of locations for a product.

### Using the Contract Functions

#### Register Product (registerProduct)

1. **Enter Product Name**: In the `_name` field, enter the product name.
2. **Enter Initial Location**: In the `_initialLocation` field, enter the initial location of the product.
3. **Click on registerProduct**: Execute the function to register the new product.

#### Update Location (updateLocation)

1. **Enter Product ID**: In the `_productId` field, enter the ID of the product.
2. **Enter New Location**: In the `_newLocation` field, enter the new location of the product.
3. **Click on updateLocation**: Execute the function to update the product's location.

#### Get Product History (getProductHistory)

1. **Enter Product ID**: In the `_productId` field, enter the ID of the product.
2. **Click on getProductHistory**: Execute the function to retrieve the product's location history.

## Conclusion

This blockchain-based supply chain tracking system provides a transparent and immutable record of product movements, enhancing trust and accountability within the supply chain. 
