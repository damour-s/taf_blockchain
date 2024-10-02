// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract ColorPalette {

    enum Color { Blue, Black, White, Pink }

    Color public colorChoice;

    constructor() {
        colorChoice = Color.White;
    }

    function selectColor(Color _color) public {
        colorChoice = _color;
    }

    function getColorChoice() public view returns (string memory) {
        if (colorChoice == Color.Blue) {
            return "Blue";
        } else if (colorChoice == Color.Black) {
            return "Black";
        } else if (colorChoice == Color.White) {
            return "White";
        } else if (colorChoice == Color.Pink) {
            return "Pink";
        } else {
            return "Unknown";
        }
    }

    function getAllChoices() public pure returns (string memory) {
        return "Blue, Black, White, Pink";
    }
}
