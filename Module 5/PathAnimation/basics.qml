// This program describes the path animation in qml

import QtQuick 2.0

Rectangle {
    id: background
    width: 400; height: 400
    color: "black"

    Image {
        id: rocket
        z: 1
        source: "rocket.png"
        width: 50; height: 50
    }

    PathAnimation {
        target: rocket
        duration: 3000
        orientation: PathAnimation.TopFirst
        anchorPoint: Qt.point(rocket.width/2, rocket.height/2)
        loops: 10
        running: true

        path: Path {
            startY: background.height/2; startX: 100
            PathCubic {
                id: path1
                x: background.width-100; y: background.height/2
                control1X: background.width/2; control1Y: 0
                control2X: x; control2Y: background.height
            }
        
            PathCubic {
                id: path2
                x: 100; y: background.height/2
                control1X: background.width-100; control1Y: 0
                control2X: 100; control2Y: background.height
            }
        }
    }

    PathView {
        anchors.fill: parent
        path: Path {
            startX: 100; startY: background.height/2
            pathElements: path1
        }
        model: 100
        delegate: Rectangle {
            width: 4; height: 4
            color: "white"
        }
    }

    PathView {
        anchors.fill: parent
        path: Path {
            startX: background.width-100; startY: background.height/2
            pathElements: path2
        }
        model: 100
// delegate specifies how each of the elements are shown on the screen.
// Here rectangles are shown but its not uncommon to use component element to
// load a different delegate
        delegate: Rectangle {
            width: 4; height: 4
            color: "red"
        }
    }
}