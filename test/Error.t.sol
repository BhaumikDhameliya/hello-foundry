// SPDX-License Identifier: UNLICENSED
pragma solidity ^0.8.18;

import "forge-std/Test.sol";
import {Error} from "../src/Error.sol";

contract ErrorTest is Test {
    Error public err;

    function setUp() public {
        err = new Error();
    }

    function testFail() public {
        err.throwError();
    }

    function testRevert() public {
        vm.expectRevert();
        err.throwError();
    }

    function testRequireMessage() public {
        vm.expectRevert(bytes("not authorized"));
        err.throwError();
    }

    function testCustomError() public {
        vm.expectRevert(Error.NotAuthorized.selector);
        err.thowCustomError();
    }

    function testErrorLabel() public {
        assertEq(uint256(1), uint256(1), "test1");
        assertEq(uint256(1), uint256(1), "test2");
        assertEq(uint256(1), uint256(1), "test3");
        assertEq(uint256(1), uint256(2), "test4");
        assertEq(uint256(1), uint256(1), "test5");
    }
}
