// This program displays values taken from Data Model in qml and displays it using Repeater
import QtQuick 2.15

Rectangle {
    width: 150; height: 200; color: "white"

    ListModel {
        id: nameModel
        ListElement { name: "Alice"; age: 42}
        ListElement { name: "Bob"; age: 41}
        ListElement { name: "Jane"; age: 44}
        ListElement { name: "Victor"; age: 43}
        ListElement { name: "Wendy"; age: 45}
    }

    Component {
        id: nameDelegate
        
        Column {
            Text {
                text: model.name
                font.pixelSize: 32
            }
            Text {
                text: model.age
                font.pixelSize: 20
            }
        }
    }

    Column {
        anchors.fill: parent
        Repeater {
            model: nameModel
            delegate: nameDelegate
        }
    }
}