// Behavior element describes a transition to be used when the value of the
// property changes
import QtQuick 2.0


Rectangle {
    color: "lightblue"
    width: 300; height: 300

    Rectangle {
        id: rect
        color: "red"
        width: 50; height: 50
        x: 100; y: 100

        Behavior on x { SpringAnimation { spring: 2; damping: 0.2}}
        Behavior on y { SpringAnimation { spring: 2; damping: 0.2}}
    }

    MouseArea {
        anchors.fill: parent
// The subtraction part is to accomodate for the fact that transformOrigin by default is set
// to TopLeft rather than Center. This is just one possible solution
        onClicked: {
            rect.x = mouse.x - rect.width/2
            rect.y = mouse.y - rect.height/2
        }
    }
}