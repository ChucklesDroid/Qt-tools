// This program describes the button placement and for testing the corner cases 

import QtQuick 2.0

Item {
    id: root
    property alias text: label.text
    readonly property int __margin: 35

// ImplicitWidth and ImplicitHeight goes from bottom to top
    implicitWidth: label.implicitWidth + __margin * 2
    implicitHeight: background.implicitHeight

    BorderImage {
        id: background
        anchors.fill: parent
        source: "button.jpg"
        border { left: root.__margin; right: root.__margin }

        Text {
            id: label
            font.pixelSize: 30
            anchors.centerIn: parent
        }
    }
}