// This program uses raw keyboard input to rotate an image 

import QtQuick 2.15

Rectangle{
    width: 400; height: 400
// Its important for image to be rotated that the rectangle in which 
// its defined needs to have focus so that keyboard can interact with it.

// Only one item can have focus set to true: globally
    // a) this applies even across multiple QML files in a project
    // b) QtQuick will prevent having multiple items that have focus set to true
    focus: true

    Image{
        id: image
        source: "../Gesture Suport/sample.png"
        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
        width: 400; height: 400
    }

// The following line rotates the image by 10 degrees in the clockwise direction when the 
// right arrow key is pressed and by 10 degrees in the anti-clockwise direction when the left arrow key is pressed.
// '% 360' is used to ensure that the rotation is always between 0 and 360 degrees.
    Keys.onLeftPressed: {
        image.rotation = (image.rotation - 10) % 360
    }
    Keys.onRightPressed: {
        image.rotation = (image.rotation + 10) % 360
    }
}