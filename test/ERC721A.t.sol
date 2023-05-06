// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "./MeasureGas.t.sol";
import "../src/MyERC721A.sol";

contract ERC721ATest is Test, MeasureGasTest {
    MyERC721A nft;
    address user = makeAddr("user");
    address user2 = makeAddr("user2");
    address user3 = makeAddr("user3");

    function setUp() public {
        nft = new MyERC721A();
        vm.prank(user);
        nft.mint(10);
        vm.prank(user2);
        nft.mint(10);
        vm.prank(user3);
        nft.mint(10);
    }

    function testMint1() public {
        vm.startPrank(user);
        nft.mint(1);
    }

    function testMint2() public {
        vm.prank(user);
        nft.mint(2);
    }

    function testMint3() public {
        vm.prank(user);
        nft.mint(3);
    }

    function testMint4() public {
        vm.prank(user);
        nft.mint(4);
    }

    function testMint5() public {
        vm.prank(user);
        nft.mint(5);
    }

    function testApprove0() public {
        vm.prank(user);
        nft.approve(user2, 0);
    }

    function testApprove1() public {
        vm.prank(user);
        nft.approve(user2, 1);
    }

    function testApprove2() public {
        vm.prank(user);
        nft.approve(user2, 2);
    }

    function testApprove3() public {
        vm.prank(user);
        nft.approve(user2, 3);
    }

    function testApprove4() public {
        vm.prank(user);
        nft.approve(user2, 4);
    }

    function testTransfer0() public {
        vm.prank(user);
        nft.safeTransferFrom(user, user2, 0);
    }

    function testTransfer1() public {
        vm.prank(user);
        nft.safeTransferFrom(user, user2, 1);
    }

    function testTransfer2() public {
        vm.prank(user);
        nft.safeTransferFrom(user, user2, 2);
    }

    function testTransfer3() public {
        vm.prank(user);
        nft.safeTransferFrom(user, user2, 3);
    }

    function testTransfer4() public {
        vm.prank(user);
        nft.safeTransferFrom(user, user2, 4);
    }

    function testTransfer5() public {
        vm.prank(user);
        nft.safeTransferFrom(user, user2, 5);
    }

    function testTransfer6() public {
        vm.prank(user);
        nft.safeTransferFrom(user, user2, 6);
    }

    function testTransfer7() public {
        vm.prank(user);
        nft.safeTransferFrom(user, user2, 7);
    }

    function testTransfer8() public {
        vm.prank(user);
        nft.safeTransferFrom(user, user2, 8);
    }

    function testTransfer9() public {
        vm.prank(user);
        nft.safeTransferFrom(user, user2, 9);
    }

    function testTransferLastOwnedToken() public {
        vm.prank(user);
        nft.safeTransferFrom(user, user2, 9);
    }

    function testTokenOfOwnerByIndex0() public {
        nft.tokenOfOwnerByIndex(user, 0);
    }

    function testTokenOfOwnerByIndex1() public {
        nft.tokenOfOwnerByIndex(user, 1);
    }

    function testTokenOfOwnerByIndex2() public {
        nft.tokenOfOwnerByIndex(user, 2);
    }

    function testTokenOfOwnerByIndex3() public {
        nft.tokenOfOwnerByIndex(user, 3);
    }

    function testOwnerOf0() public {
        nft.ownerOf(0);
    }

    function testOwnerOf9() public {
        nft.ownerOf(9);
    }
}
