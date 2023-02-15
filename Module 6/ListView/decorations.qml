// Customizing ListView:

// By default ListView is:-
// a) Undecorated
// b) A flickable surface
// c) To add a decoration:-
//     1) With a footer or a header
//     2) With a highlight item to show the current item.

// d) To configure for Navigation:
//     1) Set focus to allow keyboard navigation
//     2) Highlight also allows the user with Navigation.
//     3) Unset Interactive to disable dragging and flicking 

import QtQuick 2.15

Rectangle {
    id: background; 
    width: 180; height: 220; color: "white"

    ListModel {
            id: nameModel
            ListElement { name: "Alice"; age: 42}
            ListElement { name: "Bob"; age: 41}
            ListElement { name: "Jane"; age: 44}
            ListElement { name: "Harry"; age: 43}
            ListElement { name: "Wendy"; age: 45}
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
    }

    Text {
        id: label
        text:   "<b>" + listView.currentItem.text + 
                "</b> is current"
        font.pixelSize: 16
        anchors {
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }
    }

}