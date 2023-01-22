// This program demonstrates the use of Tab and hold me gesture

import QtQuick 2.15

Rectangle{
    // implicitWidth: txt.width; implicitHeight: txt.height
    width: 500; height: 200
    color: "lightblue"

    Text{
        anchors.centerIn: parent
        text: "Press and hold me"
        font.pixelSize: 48

        property bool isActive: false
        color: isActive ? "green" : "black"

        MouseArea{
            id: mouseArea
            anchors.fill: parent
            onPressAndHold:{
                parent.isActive = !parent.isActive;
            }
        }
    }
}