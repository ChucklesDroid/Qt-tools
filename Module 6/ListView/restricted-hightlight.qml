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
        ListElement { name: "Alice"; team: "Crypto"}
        ListElement { name: "Bob"; team: "Crypto"}
        ListElement { name: "Jane"; team: "QA"}
        ListElement { name: "Victor"; team: "QA"}
        ListElement { name: "Wendy"; team: "Graphics"}
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
        anchors.fill:parent
        model: nameModel
        delegate: nameDelegate
        focus: true
        clip: true
        preferredHighlightBegin: 50
        preferredHighlightEnd: 150
// The difference b/w the two is most visible when in tiled mode
        // highlightRangeMode: ListView.ApplyRange
        highlightRangeMode: ListView.StrictlyEnforceRange

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

// This line here describes how the rectangles will be positioned in the available space
        Rectangle {
            id: highlightBegin
            height: 1
            anchors {
                left: parent.left
                right: parent.right
            }
            x: 0; y: 50
            color: "red"
        }
        Rectangle {
            id: highlightEnd
            height: 1
            anchors {
                left: parent.left
                right: parent.right
            }
            x: 0; y: 150
            color: "red"
        }
    }
}