// This program deals with making local variables. Its a good design pattern to 
// define local variables prefixed with '__'. But in general if a property is defined
// at the topmost parent its accessible by its children

// We make use of signal handlers to contol the movement of the square box

import QtQuick 2.0

Rectangle {
    id: background
    
    property int itemSize: 80
    property int cellCount: 4

    width: cellCount * itemSize; height: cellCount * itemSize
    border.color: "brown"
    border.width: 4
    clip: true

    Rectangle {
        id: box
        color: "lightsteelblue"
        focus: true

        property int __col: 2
        property int __row: 1

        x: (__col-1) * itemSize
        y: (__row-1) * itemSize

        width: itemSize; height: itemSize

        Keys.onLeftPressed: {
            if (__col === 1) {
                __col = 4
            } else {
                __col = __col - 1
            }
        }
        Keys.onRightPressed: {
            if (__col === 4) {
                __col = 1
            } else {
                __col = __col + 1
            }
        }
        Keys.onUpPressed: {
            if (__row === 1) {
                __row = 4
            } else {
                __row = __row - 1
            }
        }
        Keys.onDownPressed: {
            if (__row === 4) {
                __row = 1
            } else {
                __row = __row + 1
            }
        }
    }
}