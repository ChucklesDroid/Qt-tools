// This program illustrates the use of Mouse input using 'MouseArea'
// Note: This program also follows imperative style of writing programs which is not ideal
// in qml ideal style of programming is declarative style.

import QtQuick 2.15

Rectangle{
    id: root
    width: 400; height: 200
    color: "lightblue"

    Text{
        text: "Press me"
        font.pixelSize: 32
        color: "black"
        anchors.horizontalCenter: parent.horizontalCenter
        y: 30

        MouseArea{
            anchors.fill: parent
// This initialization here depicts the imperative form of programming
            onPressed: parent.color = "green"
            onReleased: parent.color= "black"
        }
    }

    Text{
        text: "Click Me"
        font.pixelSize: 32
        color: "black"
        anchors.horizontalCenter: root.horizontalCenter
        y: 130
        
        MouseArea{
            anchors.fill: parent
// This initialization here depicts the imperative form of programming
            onClicked: parent.font.bold = !parent.font.bold
        }
    }


}