// This program describes the use of ListView in qml, which is basically used to
// arrange items on the screen

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
        ListElement { name: "Alice"; age: 42}
        ListElement { name: "Bob"; age: 41}
        ListElement { name: "Jane"; age: 44}
        ListElement { name: "Victor"; age: 43}
        ListElement { name: "Wendy"; age: 45}
        ListElement { name: "Alice"; age: 42}
        ListElement { name: "Bob"; age: 41}
        ListElement { name: "Jane"; age: 44}
        ListElement { name: "Victor"; age: 43}
        ListElement { name: "Wendy"; age: 45}
        ListElement { name: "Alice"; age: 42}
        ListElement { name: "Alice"; age: 42}
        ListElement { name: "Alice"; age: 42}
        ListElement { name: "Bob"; age: 41}
        ListElement { name: "Jane"; age: 44}
        ListElement { name: "Victor"; age: 43}
        ListElement { name: "Wendy"; age: 45}
        ListElement { name: "Bob"; age: 41}
        ListElement { name: "Jane"; age: 44}
        ListElement { name: "Victor"; age: 43}
        ListElement { name: "Wendy"; age: 45}
        ListElement { name: "Bob"; age: 41}
        ListElement { name: "Jane"; age: 44}
        ListElement { name: "Victor"; age: 43}
        ListElement { name: "Wendy"; age: 45}
        ListElement { name: "Alice"; age: 42}
        ListElement { name: "Bob"; age: 41}
        ListElement { name: "Jane"; age: 44}
        ListElement { name: "Victor"; age: 43}
        ListElement { name: "Wendy"; age: 45}
    }

    Component {
        id: nameDelegate

        Rectangle {
            readonly property ListView __lv: ListView.view
            implicitHeight: txt.implicitHeight
            implicitWidth: txt.implicitWidth
            anchors {
                left: parent.left
                right: parent.right
            }
            // color: lv.currentIndex == index ? "yellow" : "lightGray"
            // To make this component reusable instead of hard-coding the id of ListView, we can make use of 'ListView.view'
            // to achieve the same thing. 
            // Note: 'ListView.view' will only be available to the topmost element  
            // we can bipass this by using 'parent.', defining a readonly ListView type property or by using the id of the topmost element
            // color: ListView.view.currentIndex == index ? "yellow" : "lightGray"
            color: __lv.currentIndex == index ? "yellow": "lightGray"

            Text {
                id: txt
                text: model.name
                font.pixelSize: 32

            // To see the elements being deleted and generated we make use of signal handlers onCompleted and onDeleted
                Component.onCompleted: console.log("Welcome", model.index, model.name)
                Component.onDestruction: console.log("Die", model.index, model.name)
            }

            MouseArea {
                anchors.fill: parent
                // onClicked: lv.currentIndex = index // or simply we can write 'index' instead of 'model.index'
                onClicked: __lv.currentIndex = index // or simply we can write 'index' instead of 'model.index'
            }
            
        }
    }

// ListView is scrollable
// ListView allows us to not create all the elements upfront, the no of elements created
// depends upon the cacheBuffer value ( which is specified in pixels )
// We can also control the amount of elements generated at a time on the screen ( basically ListView allows us to control the amount of elements generated at a time )
// naturally we can delete the elements once they are off the screen
    ListView {
        id: lv
        anchors.fill: parent
        model: nameModel
        delegate: nameDelegate
        clip: true
        // cacheBuffer describes the total lines of one pixel height that would be created but not displayed
        // above or below the view
                // cacheBuffer: 40
        // To check the default value of cacheBuffer
        // Component.onCompleted: console.log(cacheBuffer)
        onCurrentIndexChanged: console.log(currentIndex)
    }
}
