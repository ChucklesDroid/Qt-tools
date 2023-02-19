// This program describes the use of animations in qml // To look into similar methods as insert for models, refer: https://doc.qt.io/qt-6/qml-qtqml-models-listmodel.html#insert-method

import QtQuick 2.15

Rectangle {
    id: background
    color: "lightblue"

    ListModel {
        id: nameModel
        ListElement { name: "Alice"}
        ListElement { name: "Bob"}
        ListElement { name: "Jane"}
        ListElement { name: "Victor"}
        ListElement { name: "Wendy"}
    }

    Component {
        id: nameDelegate
        Text {
            id: txt
            text: model.name
            height: implicitHeight
            anchors {
                left: parent.left; right: parent.right
            }
            font.pixelSize: 30
            font.bold: true
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    nameModel.insert( 
                        index, { "name": "Item #"+nameModel.count}
                    )
                }
            }
        }

    }

    ListView {
        id: view
        anchors.fill: parent
        model: nameModel
        delegate: nameDelegate
        clip: true

        populate: Transition {
            NumberAnimation { properties: "x,y"; duration: 350 }
        }

        add: Transition {
            PropertyAction { 
                property: "transformOrigin"; value: Item.TopLeft}
            NumberAnimation { 
                property: "opacity"; from: 0; to: 1; duration: 350}
            NumberAnimation { 
                property: "scale"; from: 0; to: 1; duration: 350}
        }

        displaced: Transition {
            PropertyAction { properties: "opacity,scale"; value: 1 }
            NumberAnimation { properties: "x,y"; duration: 350 }
        }

    }
}