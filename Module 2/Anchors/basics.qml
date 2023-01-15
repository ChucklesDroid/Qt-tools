// In anchor layout we have 6 main dividing lines:-

// 3 horizontal lines:
//     1) top
//     2) bottom
//     3) verticalCenter

// 3 vertical lines:
//     1) left
//     2) right
//     3) horizontalCenter

// **Note: while defining anchor properties the images just
// stick with each other.

import QtQuick 2.0

Rectangle{
    id: item
    width: 240; height: 200
    color: "lightgrey"

    Rectangle{
        id: root
        height: 60; width: 240
        color: "lightblue"

        Rectangle{
            y: 15
        // Here we stick the child rectangle to the parent via the right vertical anchor line
            anchors.right: root.right
            height: 30; width: 30
            color: "green"
        }
    }


    Rectangle{
        id: root2
        x: 0; y: 70
        height: 60; width: 240
        color: "Lightblue"

        Rectangle{
            height: 30; width: 30
        // Here we assign the right vertical anchor line of the child to right anchor line of the parent
        // as well the top horizontal anchor line of the child to the parent
        // Thereby eliminating the need for x, y coordinates
            anchors{
                right: parent.right
                top: parent.top
            }
        // Easier to read this compound anchor assignment
            color: "green"
        }
    }

    Rectangle{
        x: 0; y: 140
        height: 60; width: 240
        color: "Lightblue"

        Rectangle{
            height: 30
            anchors{
                top: parent.top
                left: parent.left
                right: parent.right
            }
            color: "green"
        }
    }
}