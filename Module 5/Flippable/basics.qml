// This program is used to demonstrate flipping animation in qml

import QtQuick 2.0

Rectangle {
    id: background
    width: 400; height: 400
    color: "black"

    Flipable {
        id: flipable
        property bool flipped: false
        anchors.centerIn: parent

        front: Rectangle {
            width: 200; height: 200
            anchors.centerIn: parent 
            color: "red"
        }
        back: Rectangle {
            width: 200; height: 200
            anchors.centerIn: parent
            color: "green"
        }
        transform: Rotation {
        // To rotate around the x axis
            axis.x: 1; axis.y: 0; axis.z: 0
            angle: flipable.flipped ? 0 : 180

            Behavior on angle {
                NumberAnimation {
                    duration: 500
                }
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            flipable.flipped = !flipable.flipped
        }
    }
}