import QtQuick 2.0

Rectangle {
    width: 300
    height: 100

// So basically since we are providing dimensions for loader LineEdit.qml will 
// anchor itself according to loader. 

// ** Note: **
// The item that the Loader loads in this case "LineEdit.qml" is a child of the Loader element
    Loader {
        id: loader
        source: "LineEdit.qml"
        anchors { left: parent.left; right: parent.right; top: parent.top }
    }

    Text {
        id: txt1
        text: "Binding :" + ( loader.item ? loader.item.text : "" )
        anchors { left: parent.left; right: parent.right; top: loader.bottom}
    }

    Text {
        id: txt2
        anchors { left: parent.left; right: parent.right; top: txt1.bottom; margins: 5 }
    }

// Bindings are basically used to dynamically bind value to attatched properties of element
// being loaded by the loader
    Binding {
        target: loader.item
        property: "text"
        value: "Hello World"
    }

// Connections are used to dynamically provide signal handlers for the signals
    Connections {
        target: loader.item
        onReturnPressed: {
            txt2.text = "Return Pressed"
        }
    }
}