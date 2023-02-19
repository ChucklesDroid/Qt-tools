import QtQuick 2.15

// Assigns it child elements in a Grid
Grid {
    x: 15; y: 15
    width: 300; height: 300

    rows: 2; columns: 2
    spacing: 20

    Rectangle {
        width: 125; height: 125; color: "red"
    }

    Rectangle {
        width: 125; height: 125; color: "green"
    }

    Rectangle {
        width: 125; height: 125; color: "grey"
    }

    Rectangle {
        width: 125; height: 125; color: "blue"
    }
}