// This program will focus on anchor margins. In qml there are 4 margins in describing anchor layouts
// These are as follows:
// 1) leftMargin
// 2) rightMargin
// 3) topMargin
// 4) bottomMargin

import QtQuick 2.0

Rectangle{
    // color: "transparent"
    height: 600; width: 800
    color: "lightblue"

    Image{
        id: book
        source: "sample.jpg"
        anchors{
            left: parent.left
            leftMargin: 20
            verticalCenter: parent.verticalCenter
        }

    Text{
        text: "Writing"
        font.pixelSize: 32
        anchors{
            left: book.right
            leftMargin: 20
            baseline: book.verticalCenter
        }
    }
    }
}