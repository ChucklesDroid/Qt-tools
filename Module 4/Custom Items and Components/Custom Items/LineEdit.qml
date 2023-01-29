// This program is used to demonstrate how we can create custom components
// We can only access the top most properties of the element( here, in first example Rectange). We cannot dot our way into the other elements.

// Unlike an ordinary property definition, which allocates a new, unique storage space for the property, a property alias connects the newly 
// declared property (called the aliasing property) as a direct reference to an existing property (the aliased property).

import QtQuick 2.0

Rectangle {
    radius: 4; smooth: true
    border.color: "green"
    clip: true
    // property string text: textinput.text
    // property string text: "Enter text..."
    property alias text: textinput.text
    property int diameter: radius

    TextEdit {
        id: textinput
        // text: "Enter text..."
        // text: parent.text
        text: "Enter text..."
        anchors {
            fill: parent
            margins: 2
        }
        color: focus ? black : gray
        font.pixelSize: parent.height-4
    }
}