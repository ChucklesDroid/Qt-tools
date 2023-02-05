// This program descibes the use of animations in qml which is a first class citizen in qml
// source: https://felgo.com/doc/qt/qml-qtquick-numberanimation/

import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    color: "lightblue"

    Rectangle {
        y: 150; width: 150; height: 150
        color: "green"

// This animation applies after the change of numerical value 
    // Here NumberAnimation applies on property x of the Rectangle
    // if Animation is defined outside we would also have to specify 'target'
    // NumberAnimation starts as soon as the program is instantiated
        NumberAnimation on x {
// This animation will not apply untill 'from' value reaches 0
            from: 0; to: 250
            duration: 1000
        }
    }
}