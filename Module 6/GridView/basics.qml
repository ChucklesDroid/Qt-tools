// This program demonstrates the use of GridView in qml

import QtQuick 2.15

Rectangle {
    id: background
    width: 220; height: 220

// Advantage of GridView over ListView is that it supports flow other than that its pretty similar
    GridView {
        id: view
        anchors.fill: parent
        anchors.margins: 10
        clip: true
        displayMarginBeginning: 120
        displayMarginEnd: 120

        model: ListModel {
            ListElement { name: "rocket"; source: "rocket.png"}
            ListElement { name: "cross"; source: "cross.png"}
            ListElement { name: "book"; source: "book.png" }
            ListElement { name: "arrow"; source: "arrow.png" }
        }
        delegate: Column {
            leftPadding: 10
            Image {
                id: img
                source: model.source
                anchors.horizontalCenter: txt.horizontalCenter
                width: 64; height: 64; smooth: true
                fillMode: Image.PreserveAspectFit
            }
            Text {
                id: txt
                text: model.name
                font.pixelSize: 24
            }
        }
    }
}