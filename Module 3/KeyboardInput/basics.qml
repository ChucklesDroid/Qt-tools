// This program focuses on keyboard input:-
// 1) Accepting keyboard input using TextInput( single line ) or TextEdit( multi line )
// 2) Navigating b/w elements: 
    // q) Changing the focussed element
    // b) Directional arrows, tab and back-tab
// 3) Getting raw keyboard input

import QtQuick 2.15

Rectangle{
    height: 150; width: 300
    color: "lightblue"

    TextEdit{
        id: txt1
        text: "Text1"
        anchors.left: parent.left
        y: 0
        font.pixelSize: 32
        color: activeFocus ? "black" : "gray"
        focus: true
        activeFocusOnTab: true
        readOnly: true
    }

    TextEdit{
        id: txt2
        text: "Text2"
        anchors.left: parent.left
        y: 40
        font.pixelSize: 32
        color: activeFocus ? "black" : "gray"
        activeFocusOnTab: true
        readOnly: true
    }

    TextEdit{
        id: txt3
        text: "Text3"
        anchors.left: parent.left
        y: 80
        font.pixelSize: 32
        color: activeFocus ? "black" : "gray"
        activeFocusOnTab: true
        readOnly: true
    }
}