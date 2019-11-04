/**
 *  Xooa Ethereum Get Set smart contract
 *
 *  Copyright 2019 Xooa
 *
 *  Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
 *  in compliance with the License. You may obtain a copy of the License at:
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed
 *  on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License
 *  for the specific language governing permissions and limitations under the License.
 */

pragma solidity ^0.5.2;


contract CommonContract {
    uint constant internal MINIMUM_TIMESTAMP = 1483228800;  // Must be in 2017

    function stringEquals(string storage value1, string memory value2) internal pure returns (bool) {
        return getHashFromString(value1) == getHashFromString(value2);
    }

    // Compute the Ethereum-SHA-3 hash from a string
    function getHashFromString(string memory value) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(value));
    }
}