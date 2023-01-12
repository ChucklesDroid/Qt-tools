// Questions to be answered: 
// 1) Can items overlap ?
// -- Yes, they can.
// 2) Can child items be displayed outside their parents ?
// -- Yes, they can. To prevent this, use "clip: true" in 
// the parent item as in the case of 2nd rectangle.
import QtQuick 2.0

Rectangle{
// Dont call an element 'top' its a keyword in qml
    id: root
    x: 0; y:0
    height: 400; width: 400
    color: "grey"
    
    Rectangle{
        x:50; y:50
        height: root.height/2 -50 ; width: root.width - 100
        color: "lightblue"

        Rectangle{
            x:50; y:50
            height: 50; width: 50
            color: "white"
        }
    }

    Rectangle{
        x:50; y:200
        height: root.height/2 -50; width: root.width -100
        color: "green"
        clip: true

        Rectangle{
            x: 100; y: 50
            height: 50; width: 150
            color: "blue"
        }
    }
}