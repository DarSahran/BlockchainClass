// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SerializationExample {
function serialize(string memory str) public pure returns (bytes memory) {
return abi.encode(str);
}

function deserialize(bytes memory data) public pure returns (string memory) {
return abi.decode(data, (string));
}
}