// This program is used to demonstrate the use of reusable components in qml

import QtQuick 2.0

Rectangle {
    color: "lightblue"
    width: 450; height: 100

    LineEdit {
        id: lineEdit
// You can only access the properties at the top most level of the component
        anchors.centerIn: parent
        width: 300; height: 40
    }

    Text {
        text: "<b>Summary:</b>" + lineEdit.text
        font.pixelSize: 20
        anchors {
            left: parent.left; leftMargin: 16
            bottom: parent.bottom; bottomMargin: 1
        }
    }

    Image {
        id: clear
        source: "sample.png"
        anchors {
            left: lineEdit.right; leftMargin: 1
            verticalCenter: lineEdit.verticalCenter
        }
        width: 50; height: 40
        opacity: lineEdit.text === "" ? 0.25 : 1.0

        MouseArea {
            anchors.fill: parent
            onClicked: {
                lineEdit.text = ""
            }
        }
    }
}