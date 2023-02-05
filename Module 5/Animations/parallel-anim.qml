import QtQuick 2.0

Rectangle {
    id: background  
    width: 400; height: 400

    Image {
        id: image
        source: "ball.png"
        width: 100; height: 100
        anchors.centerIn: parent
    }

    ParallelAnimation {
        NumberAnimation {
            target: image
            property: "scale"
            from: 0.5; to: 1
            duration: 1000
        }
        NumberAnimation {
            target: image
            property: "opacity"
            from: 0; to: 1
            duration: 1000
        }
        running: true
    }
}