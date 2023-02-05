// This program describes the use of sequential animation in qml
import QtQuick 2.0

Rectangle {
    id: background
    width: 300; height: 300
    color: "transparent"

    Image {
        id: ball
        source: "ball.png"
        width: 100; height: 100
        anchors.centerIn: parent
    }

// Executes a series of animations in sequence
    SequentialAnimation {
        NumberAnimation {
            target: ball
            property: "scale"
            from: 1; to: 0.2
            duration: 1000
        }
// Pauses the animation for a set duration of time
        PauseAnimation {
            duration: 5000
        }
        NumberAnimation {
            target: ball
            property: "opacity"
            from: 1; to: 0
            duration: 1000
        }
        running: true
    }
}