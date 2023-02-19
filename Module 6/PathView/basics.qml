import QtQuick 2.15

Rectangle {
    id: background
    width: 300; height: 250 
    color: "white"
    // color: "black"

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
// The following model and delegates are used to understand the path traced by 'path' element
        // model: 100
        // delegate: Rectangle {
        //     width: 10; height: 10
        //     color: "red"
        // }

// Control Points are basically two points that lie on the path of the curve, if not specified the path
// will be a straight line. The path goes from (startX,startY)->(control1X,control1Y)->(control2X,control2Y)->
// (x,y). So basically you can think of control points as points that pull the curve towards themselves and lie
// on the path of the curve
        path: Path {
            startX: 150; startY: 200
// This is basically to understand the Control Points exchange control1 coordinates with control2 to understand the difference
            // PathCubic {
            //     x: 100; y: 150
            //     control1X: 100; control1Y: 350
            //     control2X: -50; control2Y: 150
            // }
            PathCubic { 
                x: 50; y: 100
                control1X: 100; control1Y: 200
                control2X: 50; control2Y: 125
            }
            PathCubic { 
                x: 150; y: 50
                control1X: 50; control1Y: 75
                control2X: 100; control2Y: 50
            }
            PathCubic { 
                x: 250; y: 100
                control1X: 200; control1Y: 50
                control2X: 250; control2Y: 75
            }
            PathCubic { 
                x: 150; y: 200
                control1X: 250; control1Y: 125
                control2X: 200; control2Y: 200
            }
        }

        Keys.onLeftPressed: decrementCurrentIndex()
        Keys.onRightPressed: incrementCurrentIndex()
    }
}