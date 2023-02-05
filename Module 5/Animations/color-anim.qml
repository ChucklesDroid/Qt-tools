// This program is used to test the ColorAnimation class.
import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    color: "lightblue"

    // ColorAnimation on color { to: "yellow"; duration: 1000 }

    Rectangle {
        id: rect
        x: 100; y: 150
        width: 100; height: 100
        color: "green"
    }

    ColorAnimation {
        id: anim
        target: rect
        property: "color"
        // from: Qt.rgba(0,0.5,0,1)
        from: "green"
        to: "white"
        // to: Qt.rgba(1,1,1,1)
        duration: 1000
        running: true
    }

}