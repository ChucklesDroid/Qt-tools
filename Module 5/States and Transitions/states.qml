// This program is used to create a simple Traffic light to indicate the use
// of states and transformations

import QtQuick 2.15

Rectangle {
    id: background
    width: 150; height: 300
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
            var states = ["stopState" ,"waitState" ,"driveState" ,"slowState"]
            var nextIndex = (states.indexOf(parent.state) + 1) 
                            % states.length
            parent.state = states[nextIndex]
        }
    }
}
