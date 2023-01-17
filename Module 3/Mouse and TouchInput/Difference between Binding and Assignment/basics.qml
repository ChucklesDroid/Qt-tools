// This program demonstrates the difference b/w binding and assignment( which is a javascript element )
// Note: Any assignment removes the binding as we will see later on


import QtQuick 2.15

Rectangle{
    color: "transparent"
    width: 680; height: 240

    Rectangle{
        id: rect1
        height: 200; width: 200
// Declarative programming used here
        // color: mouseArea1.containsMouse ? "green" : "cyan"
// Previous statement was changed to incorporate color change due to 3rd box but with declarative programming
        color: mouseArea1.containsMouse ? "green": mouseArea2.pressed ? "blue" : "cyan"
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            margins: 20
        }
        Text{
            text: "Observe my color"
            anchors.centerIn: parent
        }
    }


    Rectangle{
        id: rect2
        height: 200; width: 200
        color: "yellow"
        anchors{
            left : rect1.right
            verticalCenter: rect1.verticalCenter
            margins: 20
        }
        Text{
            text: "Move \ninto me"
            anchors.centerIn: parent
        }
        MouseArea{
            id: mouseArea1
            anchors.fill: rect2
            hoverEnabled: true
        }
    }


    Rectangle{
        height: 200; width: 200
        color: "black"
        anchors{
            left: rect2.right
            verticalCenter: rect2.verticalCenter
            margins: 20
        }
        Text{
            text: "Click Me"
            anchors.centerIn: parent
            color: "white"
        }
        MouseArea{
            id: mouseArea2
            anchors.fill: parent
// Imperative progamming used. As we see here, when imperative programming is used, the binding is discarded
// as here in this example the color of the rectangle does not change any longer and is stagnant blue
            // onClicked:{
                // rect1.color = "blue"
            // }
        }
    }

}