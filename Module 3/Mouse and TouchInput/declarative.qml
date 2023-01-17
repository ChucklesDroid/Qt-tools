import QtQuick 2.0

Rectangle{
    color: "lightblue"
    width: 400; height: 100

    Text{
        text: "Press Me"
        font.pixelSize: 32
        anchors{
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }
        color: mouseArea.pressed ? "green" : "black"

        MouseArea{
            id: mouseArea
            anchors.fill: parent
        }
    }
}
