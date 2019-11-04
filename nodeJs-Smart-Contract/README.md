# Xooa Node Smart Contract

This page provides an overview to Xooa Node Smart Contract functionalities written.

This smart contract runs on `Hyperledger Fabric` and is written in `Node`.


## Overview

This smart contract provides 3 functions:
  
  * Invoke
  * Query
  * Delete


#### Invoke

Invoke method is used to transfer balance from one account to other.
This method expects three arguments `[ "<sender account>", "<recipient account>", "<amount to transfer>" ]`.


#### Query

Set method is used to query balance of an account.
This method expects an argument `[ "<account>" ]`.


#### Delete

This method is used to delete the account from world state.
This method expects an argument `[ "<account>" ]`.


## Deploy the Xooa Node Smart Contract
 
1. Follow the instructions here: https://docs.xooa.com/start.html#deploy-the-smart-contract-app, selecting the **Xooa Node Smart Contract**.

2. Record the **API Token** when it is shown: you will need it to authorize API requests from Swagger.

   > **Tip:**  to regenerate the API token: 
   >
   > 1. Go to the **Identities** tab in the App. 
   > 2. Click **Actions** for the identity for which token is to be regenerated.
   > 3. Select **Regenerate API Token**, and then click on **Generate**.



## Explore the Xooa Node Smart Contract end-points

1. Go to the **API** tab, and  under API Explorer paste API Token and click **Authorize API** .

2. Scroll below and select any endpoint and click **Try it out**.

3. In the **body** field, replace placeholder with your own data to store in the blockchain.

4. Click **Execute**. 

> **Congrats!** You have saved data in a blockchain using **Xooa**.

5. To view your transaction as part of the blockchain, go to [https://xooa.com/blockchain](https://xooa.com/blockchain/ledger?utm_source=samplesRepo) or navigate to **Ledger** from your Xooa console.

6. Navigate to **Transactions** tab.

7. You can expand the data field to see your transactions.