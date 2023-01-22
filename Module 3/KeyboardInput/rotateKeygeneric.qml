// This program basically redefines 'rotateImage.qml' with more generalized key press

import QtQuick 2.15

Rectangle{
    width: 600; height: 600
    focus: true

    Image{
        id: image
        source: "../Gesture Suport/sample.png"
        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
        transformOrigin: Item.Center
    }

// Qt.KeyLeft is an enumeration value i.e a named variable carrying an integral constant. So when comparing its essential
// that we use '===' instead of '==', to make sure that we are comparing the value of the variable and also its type.
// In javascript when '==' is used, the operands are converted into the same type and then its value is checked
// but in case of '===', the operands are not converted into the same type and both their value and type is compared.
    Keys.onPressed: {
        if ( event.key === Qt.Key_Left ) {
            image.rotation = (image.rotation - 10) % 360;
        }

        else if ( event.key == Qt.Key_Right ) {
            image.rotation = (image.rotation + 10) % 360;
    }
    }
}