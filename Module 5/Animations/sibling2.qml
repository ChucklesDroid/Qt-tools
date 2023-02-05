// This program is used to test NumberAnimation in conjunction with MouseArea
import QtQuick 2.15

Rectangle {
    width: 400; height: 400
    color: "lightblue"

    Rectangle {
        id: rect
        x: 300; y: 300
        width: 100; height: 100
    }

    NumberAnimation {
        id: anim
        target: rect
        properties: "x,y"
        to: 150
        duration: 1000
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            anim.to = (anim.to === 150 ? 0 : 150)
            anim.running = true
        }
    }
}