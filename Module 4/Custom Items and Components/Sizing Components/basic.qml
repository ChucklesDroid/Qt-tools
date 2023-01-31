// This program is used to test the corner cases of sizing elements in different layouts
// PS: Width & Height goes Top to Bottom
// implicitWidth and implicitHeight goes from Bottom to Top

// a) At first only width is passed to the Button
// b) In second case only height is passed to the Button
// c) In third case neither height nor width is passed to the Button, 
// implicitWidth and implicitHeight takes care of the dimensions of Stretched Image.

import QtQuick 2.0

Item {
    width: 800; height: 600

    Row {
        id: topButtonRow

        anchors {
            top: parent.top
            horizontalCenter: parent.horizontalCenter
        }

        spacing: 20
        
        Button {
            width: 300
            text: "Open"
        }

        Button {
            width: 300
            text: "Close"
        }
    }

    Rectangle {
        id: content
        color: "lightsteelblue"
        height: parent.height - topButtonRow.height - bottomButtonRow.height

        anchors {
            top: topButtonRow.bottom
            left: parent.left
            right: parent.right
        }

        Button {
            id: contentButton
            anchors {
                left: parent.left
                verticalCenter: parent.verticalCenter
            }
            // height: 100
            width: 300
            text: "Test"
        }
        
        Rectangle {
            anchors {
                left: contentButton.right
                verticalCenter: contentButton.verticalCenter
            }
            height: contentButton.height
            width: 55
            color: "red"
        }
    }

    Row {
        id: bottomButtonRow
        anchors {
            top: content.bottom
            horizontalCenter: parent.horizontalCenter
        }
        
        spacing: 20

        Button {
            text: "Ok"
            width: 300
        }

        Button {
            text: "Cancel"
            width: 300
        }
    }
}