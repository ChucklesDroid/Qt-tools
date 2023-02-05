// This program deals with describing Animation elements as seperate sibling element
import QtQuick 2.0

Rectangle {
    id: background
    width: 400; height: 400
    color: "lightblue"

    Rectangle {
        x: 250; y: 250
        width: 150; height: 150
        id: movingbox
        color: white
    }

    NumberAnimation {
        target: movingbox
        properties: "x,y"
        to: 150
        duration: 1000
// When declaring animations as sibling elements its essential to set running: true
        running: true
    }

}
