import QtQuick 2.0

Item {
    height: checkImage.height
    width: checkImage.width + textItem.width
    property bool checked: false

    Image {
        id: checkImage
        anchors {
            left: parent.left
            leftMargin: 4
            verticalCenter: parent.verticalCenter
        }
        source: checked ? "checkbox-ticked.png" : "checkbox-unticked.png"
    }

    Text {
        id: textItem
        anchors {
            left: checkImage.right
            leftMargin: 4
            verticalCenter: parent.verticalCenter
        }
        text: "Option"
        font.pixelSize: checkImage.height
    }

    MouseArea {
        id: toggleArea
        anchors.fill: parent
        onClicked: checked = !checked
    }
}