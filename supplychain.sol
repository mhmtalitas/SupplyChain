// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SupplyChain {
    struct Product {
        uint256 id;
        string name;
        string currentLocation;
        address owner;
        string[] history;
    }

    uint256 public productCount;
    mapping(uint256 => Product) public products;

    event ProductRegistered(uint256 id, string name, address owner);
    event LocationUpdated(uint256 id, string location, address owner);

    function registerProduct(string memory _name, string memory _initialLocation) public {
        productCount++;
        Product storage newProduct = products[productCount];
        newProduct.id = productCount;
        newProduct.name = _name;
        newProduct.currentLocation = _initialLocation;
        newProduct.owner = msg.sender;
        newProduct.history.push(_initialLocation);

        emit ProductRegistered(productCount, _name, msg.sender);
    }

    function updateLocation(uint256 _productId, string memory _newLocation) public {
        require(_productId > 0 && _productId <= productCount, "Invalid product ID");
        Product storage product = products[_productId];
        require(msg.sender == product.owner, "Only the owner can update the location");

        product.currentLocation = _newLocation;
        product.history.push(_newLocation);

        emit LocationUpdated(_productId, _newLocation, msg.sender);
    }

    function getProductHistory(uint256 _productId) public view returns (string[] memory) {
        require(_productId > 0 && _productId <= productCount, "Invalid product ID");
        return products[_productId].history;
    }
}
