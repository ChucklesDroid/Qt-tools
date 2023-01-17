// This program demonstrates Mouse-event-propagation in QML

import QtQuick 2.0

Rectangle{
    width: 400; height: 200
    color: "lightblue"

    Rectangle{
        x: 40
        y: 40
        width: 50 
        height: 50

        color: "red"

        MouseArea{
            anchors.fill: parent
            onPressed: console.log("Lower rectangle pressed") ;
            onReleased: console.log("Lower rectangle released") ;
            onClicked: console.log("Lower rectangle clicked") ;
        }
    }

    Rectangle{
        x: 60 
        y: 60
        width: 50 
        height: 50

        color: "yellow"

        MouseArea{
            anchors.fill: parent
// This 'propagateComposedEvent: true;', works in conjugation with 'onClicked' or 'doubleClicked' or 'pressAndHold'. By setting this to true it first performs it's task 
// in the present MouseArea ( in this case yellow square ) then propagates to the lower item in the visual stack( here red square and red square is clicked ).
            propagateComposedEvents: true
            onPressed:{
// This 'mouse.accepted=false;' basically it first completes all the task defined in onPressed then it disables the mouse for that element( here yellow rectangle )
// and propagates the event to the item lower visual stacking( here red square and red square gets pressed )
                // mouse.accepted = false;
                console.log("Upper rectangle pressed") ;
            } 
            onReleased: console.log("Upper rectangle released") ;
            onClicked:{
// This works with 'propagateComposedEvents: false;' 
                mouse.accepted = false;
                console.log("Upper rectangle clicked") ;
            }
        }
    }
}