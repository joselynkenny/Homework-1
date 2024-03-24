// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    uint256 private _count;

    function register() external returns (uint256) {
        if (_count > 0) {
            return 123;
        }
         _count++;
        return 11000;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    uint256 private _count;

    function register() external view returns (uint256) {
        IClassroomV2 classroom = IClassroomV2(msg.sender);
        if (classroom.isEnrolled() == false) {
            return 11000;
        }
        return 123;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        if (gasleft() < 7000) {
            return 123;
        }
        return 11000;
    }
}
