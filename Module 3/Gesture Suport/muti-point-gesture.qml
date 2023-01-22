// This program describes the use of multipoint touches
import QtQuick 2.15

Rectangle{
    id: item
    width: 600; height: 600
    color: "lightblue"

// Describes the behaviour of multipoint toucharea
    MultiPointTouchArea{
        anchors.fill: parent
        minimumTouchPoints: 1
        maximumTouchPoints: 3
// 'touchPoints' is basically a list of touch points which are later assigned
        touchPoints: [
            TouchPoint{ id: tp1 },
            TouchPoint{ id: tp2 },
            TouchPoint{ id: tp3 }
        ]
    }

    Rectangle{
// Assigning the rectangle to appear at the center of the touch point
        x: tp1.x - width/2; y: tp1.y - height/2
        width: 100; height: 100
        color: "red"
        visible: tp1.pressed
    }
    
    Rectangle{
        x: tp2.x - width/2; y: tp2.y - height/2
        width: 100; height: 100
        color: "green"
        visible: tp2.pressed
    }

    Rectangle{
        x: tp3,x - width/2; y: tp3.y - height/2
        width: 100; height: 100
        color: "yellow"
        visible: tp3.pressed
    }
}