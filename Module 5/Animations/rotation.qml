import QtQuick 2.15

Item {
    width: 100; height: 100

    Image {
        id: ball
        source: "ball.png"
        anchors.centerIn: parent
        smooth: true

        RotationAnimation on rotation {
            from: 45; to: 315
            direction: Rotation.Clockwise.Shortest
            duration: 1000
        }
    }
}