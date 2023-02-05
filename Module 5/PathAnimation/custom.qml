// For defining custom attributes of images across path namely x, y and angle
// we make use of PathInterpolator
// Reference: https://doc.qt.io/qt-6/qml-qtquick-pathinterpolator.html

import QtQuick 2.0

Rectangle {
    id: background
    width: 400; height: 400
    color: "black"

    Image {
        id: rocket
        source: "rocket.png"
        width: 50; height: 50
        x: pathInterPolator.x - width/2
        y: pathInterPolator.y - height/2
        rotation: pathInterPolator.angle + 90
    }

    PathInterpolator {
        id: pathInterPolator

        path: Path {
            startX: 50; startY: background.height/2
            PathCubic {
                id: path1
                x: background.width-50; y: background.height/2
                control1X: 50; control1Y: 0
                control2X: background.width-50; control2Y: background.height
            }
            PathCubic {
                id: path2
                x: 50; y: 0
                control1X: background.height-50; control1Y: 0
                control2X: 50; control2Y: background.height
            }
        }

        NumberAnimation on progress {
            from: 0; to: 1
            duration: 3000
        }
    }
}

