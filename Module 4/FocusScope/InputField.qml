// This program focusses on the importance of FocusScope, activeFocus and focus 
// Here to enable mouse cursor to be visible in the 2nd rectangle on pressing down arrow
// we need to set focus: true and also encapsulate everything under FocusScope instead of Item
// To sum up for active focus to shift to the desired component of an item on pressing the required key
// it needs to have focus set to true and also the item needs to be encapsulated under FocusScope and not Item

import QtQuick 2.0

// Item {
FocusScope {
    id: root
    property alias title: title.text
    implicitWidth: row.implicitWidth
    implicitHeight: row.implicitHeight

    Rectangle {
        id: focusIndicator
        anchors {
            fill: row
            margins: -2
        }
        color: "transparent"
        border {
            color: "black"
            width: 1
        }
        visible: root.activeFocus
    }

    Row {
        id: row
        spacing: 10
        anchors.verticalCenter: parent.verticalCenter

        Text {
            id: title
            anchors.verticalCenter: parent.verticalCenter
        }

        Rectangle {
            id: inputBackground
            anchors.verticalCenter: parent.verticalCenter
            width: Math.max( 50, root.width - title.width - clearButton.width - row.spacing * 2 )
            height: input.height + 10
            border {
                color: input.activeFocus ? "black" : color
                width: 3
            }
            color: "steelblue"
            radius: 10

            TextInput {
                id: input
                focus: true
                anchors.centerIn: parent
                width: parent.width - 20
                clip: true
// KeyNavigation basically allows the use of arrow keys to navigate between focussable items
// The KeyNavigation attached property enables this behavior by providing a convenient way to specify 
// the item that should gain focus when an arrow or tab key is pressed.
// Basically it needs to be defined in the scope where focus needs to be present
                KeyNavigation.right: clearButton
            }
        }

        Rectangle {
            id: clearButton
            anchors.verticalCenter: parent.verticalCenter
            width: clearButtonText.width + 10
            height: clearButtonText.height + 10
            border {
                color: activeFocus ? "black" : color
                width: 3
            }
            color: "gray"

            Text {
                id: clearButtonText
                anchors.centerIn: parent
                text: "Clear"
                color: "white"
            }

            KeyNavigation.left: input
            Keys.onReturnPressed: input.text = ""
        }
    }
}