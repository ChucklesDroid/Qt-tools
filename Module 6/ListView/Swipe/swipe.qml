// This program showcases swiping capabilites in ListView
import QtQuick 2.15

ListView {
    width: 200; height: 200
// This is the only property that makes it swipable
    snapMode: ListView.SnapOneItem
    orientation: ListView.Horizontal
    clip: true
    keyNavigationWraps: true
    // focus: true

    model: ListModel {
        ListElement { name: "Alice"; color: "red"}
        ListElement { name: "Bob"; color: "blue" }
        ListElement { name: "Jane"; color: "orange" }
        ListElement { name: "Victor"; color: "green" }
        ListElement { name: "Wendy"; color: "violet" }
    }
    delegate: Rectangle {
        color: model.color
        width: ListView.view.width
        height: ListView.view.height

        Text {
            text: model.name
            anchors.centerIn: parent
            font.pixelSize: 32
            font.bold: true
        }
    }
    
    
}