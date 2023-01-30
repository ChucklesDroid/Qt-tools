// This program showcases the use of signals and its handlers

import QtQuick 2.0

Item {
    width: 250
    height: 200

    Rectangle {
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            bottom: parent.verticalCenter
        }
        color: "lightblue"

        CheckBox {
            anchors.centerIn: parent
// ambiguity arises as to where the checkValue came from, since this is a small code
// base its easier to narrow it down to custom Item CheckBox
            onChecked: checkValue ? parent.color = "red" 
                                  : parent.color = "lightblue"
        }
    }

// In QML its better to avoid signals when possible since they use imperative 
// programming rather than declarative programming but most importantly the parameters
// described in the custom signals become a bit difficult to handle as there is ambiguity

    Rectangle {
        anchors {
            left: parent.left
            right: parent.right
            top: parent.verticalCenter
            bottom: parent.bottom
        }
        color: checkBoxBetter.checked ? "red" : "lightblue"

        CheckBoxBetter {
            id: checkBoxBetter
            anchors.centerIn: parent
        }
    }
}