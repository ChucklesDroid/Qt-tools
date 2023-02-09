import QtQuick 2.15

Rectangle {
    id: background
    width: 150; height: 350
    color: "black"

    Rectangle {
        id: redLight
        x: 25; y: 15
        width: 100; height: 100
        radius: 50
    }

    Rectangle {
        id: yellowLight
        x: 25; y: 130
        width: 100; height: 100
        radius: 50
    }

    Rectangle {
        id: greenLight
        x: 25; y: 245
        width: 100; height: 100
        radius: 50
    }

    state: "stopState"

    states: [
        State {
            name: "stopState"
            PropertyChanges { target: redLight; color: "red" }
            PropertyChanges { target: yellowLight; color: "lightGray" }
            PropertyChanges { target: greenLight; color: "lightGray" }
        },
        State {
            name: "waitState"
            PropertyChanges { target: redLight; color: "red" }
            PropertyChanges { target: yellowLight; color: "yellow" }
            PropertyChanges { target: greenLight; color: "lightGray" }
        },
        State {
            name: "driveState"
            PropertyChanges { target: redLight; color: "lightGray" }
            PropertyChanges { target: yellowLight; color: "lightGray" }
            PropertyChanges { target: greenLight; color: "green" }
        },
        State {
            name: "slowState"
            PropertyChanges { target: redLight; color: "lightGray" }
            PropertyChanges { target: yellowLight; color: "yellow" }
            PropertyChanges { target: greenLight; color: "lightGray" }
        }
    ]

    Timer {
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            var states = ["stopState", "waitState", "driveState", "slowState"]
            var nextIndex = ( states.indexOf(parent.state) + 1) % states.length
            parent.state = states[ nextIndex ]
        }
    }

    transitions: [
        Transition {
// By specifying "*" as value for "from" and "to" we set the value as for any states
// We can also specify "reversible: true" this basically means on going from state A to state B
// we can have the same transition rather than specifying it seperately
            from: "*"; to: "*"
            reversible: true
            PropertyAnimation {
                targets: [ redLight, yellowLight, greenLight ]
                duration: 100
                property: "color"
            }
        }
    ]
}