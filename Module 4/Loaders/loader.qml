// This program makes use of sourceComponent instead of source inside the loader
// QML follows model-delegate-view format to store and visualize data
// More Information: https://doc.qt.io/qt-6/qml-qtqml-component.html

import QtQuick 2.0

Rectangle {
    width: 300
    height: 100

    Component {
        id: lineEditComponent

        LineEdit {
            text: "Hello World"
            onReturnPressed : {
                txt2.text = "Return Pressed"
            }
        }
    }

// Here the advantage of using sourceComponent inside the loader is that we can make property 
// binding without using "Bindings" as well as signal handling without using "Connections".
    Loader {
        id: loader
        anchors { left: parent.left; right: parent.right; top: parent.top }
        sourceComponent: lineEditComponent
    }

    Text {
        id: txt1
        text: "Binding :" + loader.item ? loader.item.text : ""
        anchors {
            left: parent.left
            right: parent.right
            top: loader.bottom
        }
    }

    Text {
        id: txt2
        anchors { left: parent.left; right: parent.right; top: txt1.bottom }
    }
}