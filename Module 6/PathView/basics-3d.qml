import QtQuick 2.15

Rectangle {
    id: background
    width: 300; height: 250 
    color: "white"

    PathView {
        id: view
        anchors.fill: parent
        focus: true

        model: ListModel {
            ListElement { name: "rocket"; source: "../GridView/rocket.png"}
            ListElement { name: "cross"; source: "../GridView/cross.png"}
            ListElement { name: "book"; source: "../GridView/book.png" }
            ListElement { name: "arrow"; source: "../GridView/arrow.png" }
        }
        delegate: Column {
// To allow control from PathView, the following 3 lines are important
            opacity: PathView.opacity
            scale: PathView.scale
            z: PathView.z

            Image {
                id: img
                source: model.source
                width: 64; height: 64
                anchors.horizontalCenter: txt.horizontalCenter
                smooth: true; fillMode: Image.PreserveAspectFit
            }
            Text {
                id: txt
                text: model.name
                font.pixelSize: 24
            }
        }
        path: Path {
            // Front
            startX: 150; startY: 100
            PathAttribute { name: "opacity"; value: 1.0}
            PathAttribute { name: "scale"; value: 1.0}
            PathAttribute { name: "z"; value: 0}
            // Left
            PathCubic { 
                x: 50; y: 50
                control1X: 100; control1Y: 100
                control2X: 50; control2Y: 75
            }
            PathAttribute { name: "opacity"; value: 0.5 }
            PathAttribute { name: "scale"; value: 0.5 }
            PathAttribute { name: "z"; value: -1}
            // Back
            PathCubic { 
                x: 150; y: 20
                control1X: 50; control1Y: 35
                control2X: 100; control2Y: 20
            }
            PathAttribute { name: "opacity"; value: 0.25 }
            PathAttribute { name: "scale"; value: 0.25 }
            PathAttribute { name: "z"; value: -2}
            // Right
            PathCubic { 
                x: 250; y: 50
                control1X: 200; control1Y: 20
                control2X: 250; control2Y: 35
            }
            PathAttribute { name: "opacity"; value: 0.5 }
            PathAttribute { name: "scale"; value: 0.5 }
            PathAttribute { name: "z"; value: -1}

            PathCubic { 
                x: 150; y: 100
                control1X: 250; control1Y: 75
                control2X: 200; control2Y: 100
            }
        }

        Keys.onLeftPressed: decrementCurrentIndex()
        Keys.onRightPressed: incrementCurrentIndex()
    }

    Text {
        id: txt
        anchors.horizontalCenter: view.horizontalCenter
        anchors.bottom: background.bottom
        text: "3D Text"
        font.pixelSize: 32
    }
}