import QtQuick 2.0

Item {
    width: checkImage.width + textItem.width 
    height: checkImage.height
// signals should always be defined at the top 
    signal checked(bool checkValue)


    Image {
        id: checkImage
        source: "checkbox-unticked.png"
        anchors {
            left: parent.left
            leftMargin: 4
            verticalCenter: parent.verticalCenter
        }
    }

    Text {
        id: textItem
        text: "Option"
        anchors {
            left: checkImage.right
            leftMargin: 4
            verticalCenter: parent.verticalCenter
        }
        font.pixelSize: checkImage.height
    }

    MouseArea {
        id: toggleArea
        anchors.fill: parent

        property bool __checked: false

        onClicked: {
            __checked = !__checked;
            checkImage.source = __checked ? "checkbox-ticked.png" : "checkbox-unticked.png"
            checked(__checked) // Emit signal and passing __checked as argument
        }
    }
}