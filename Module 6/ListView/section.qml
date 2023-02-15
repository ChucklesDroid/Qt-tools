// This program describes how each section will be arranged in qml
import QtQuick 2.15

Rectangle {
    width: 150; height: 200; color: "white"

    ListModel {
        id: nameModel
        ListElement { name: "Alice"; team: "Crypto"}
        ListElement { name: "Bob"; team: "Crypto"}
        ListElement { name: "Jane"; team: "QA"}
        ListElement { name: "Victor"; team: "QA"}
        ListElement { name: "Wendy"; team: "Graphics"}
    }

    Component {
        id: nameDelegate
        Text {
            readonly property ListView __lv: ListView.view
            text:model.name
            font.pixelSize: 32
// By only specifying width the QML engine will take its height implicitly
            width: parent.width

            MouseArea {
                anchors.fill: parent
                onClicked: __lv.currentIndex = index
            }
        }
    }

    ListView {
        id: listView
        anchors.fill: parent
        model: nameModel
        delegate: nameDelegate
        focus: true
        clip: true
        section.property: "team"
        section.criteria: ViewSection.FullString
// This basically allows navigation to wrap around 
        keyNavigationWraps: true

        header: Rectangle {
            height: 10
            anchors {
                left: parent.left
                right: parent.right
            }
            color: "pink"
        }
        footer: Rectangle {
            height: 10
            anchors {
                left: parent.left
                right: parent.right
            }
            color: "lightblue"
        }
        highlight: Rectangle {
            anchors {
                left: parent.left 
                right: parent.right
            }
            color: "gray"
        }
        section.delegate: Rectangle {
            width: parent.width
            implicitHeight: text.implicitHeight + 4
            color: "#b0dfb0"
            Text {
                id: text
                anchors.centerIn: parent
                font.pixelSize: 16
                font.bold: true
                text: section
            }
        }
    }
}