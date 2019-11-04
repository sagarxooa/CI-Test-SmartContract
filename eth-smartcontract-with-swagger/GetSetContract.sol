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

pragma solidity ^0.4.0;

contract GetSetContract{

    mapping (string => string) state;
    event StateSaveEvent(string key, string value);

    function get(string memory key) public view returns(string) {
        string memory value = state[key];
        
        require(!equal(value, ''));
        
        return value;
    }

    function set(string memory key, string memory value) public {
        state[key] = value;

        emit StateSaveEvent(key, value);
    }
    
    function compare(string _a, string _b) internal returns (int) {
        bytes memory a = bytes(_a);
        bytes memory b = bytes(_b);
        uint minLength = a.length;
        if (b.length < minLength) minLength = b.length;
        
        for (uint i = 0; i < minLength; i ++)
            if (a[i] < b[i])
                return -1;
            else if (a[i] > b[i])
                return 1;
        if (a.length < b.length)
            return -1;
        else if (a.length > b.length)
            return 1;
        else
            return 0;
    }
    
    function equal(string _a, string _b) internal returns (bool) {
        return compare(_a, _b) == 0;
    }
}