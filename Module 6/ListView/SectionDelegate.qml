import QtQuick 2.15

Rectangle {
    color: "#b0dfb0"
    implicitHeight: txt.implicitHeight
    property alias text: txt.text
    readonly property ListView __lv: ListView.view
    signal clicked()


    Text {
        id: txt
        anchors.centerIn: parent
        font.pixelSize: 16
        font.bold: true
    }

    MouseArea {
        anchors.fill: parent
        onClicked: parent.clicked()
    }
}