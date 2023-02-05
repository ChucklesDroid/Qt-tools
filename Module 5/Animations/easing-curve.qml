// This program describes easingCurves in QtQuick. 
// Referrence: https://felgo.com/doc/qt/qml-qtquick-propertyanimation/#easing-prop

import QtQuick 2.0

Rectangle {
    id: background
    width: 400; height: 400
    color: "lightblue"

    Rectangle {
        id: squareBox
        y: 100 
        width: 100; height: 100
        color: "red"
    }
    NumberAnimation {
        id: squareAnimation
        target: squareBox
        property: "x"
        to: 300
        duration: 1000
        easing.type: Easing.InOutQuad
    }
    MouseArea {
        anchors.fill: background
        onClicked: {           
            squareAnimation.to = ( squareAnimation.to === 300 ? 0 : 300 )
            squareAnimation.running = true
        }
    }
}