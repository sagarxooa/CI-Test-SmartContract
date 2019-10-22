# Xooa SupplyChain Log Smart Contract (Using Truffle Framework)

# Overview
	This smart contract provides 5 functions:
  * addOrder
  * isExistingOrder
  * getOrderCount
  * getOrderIdAtIndex
  * getOrderById

#### addOrder
addOrder method creates a new order in the ledger.
This method creates a transaction in the blockchain ledger and stores the key-value pair.
If it succeeds in creating the transaction, it returns a response with transactionId.

#### isExistingOrder
isExistingOrder method verifies if order already exists in the ledger.
This method expects a single argument as the orderId whose existence is to be checked.
If it succeeds, it returns a response as boolean true.

#### getOrderCount
getOrderCount method fetches total count of the orders.
If it succeeds, it returns a response with count of total orders.

#### getOrderIdAtIndex
getOrderIdAtIndex method fetches the orderId at a given index.
This method expects a single argument as the index.
If it succeeds, it returns a response with orderId at the given index.

#### getOrderById
getOrderById method fetches the details for the given orderId
This method expects a single argument as orderId.
If it succeeds, it returns a response with order details of the given orderId.
