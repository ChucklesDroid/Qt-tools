import QtQuick 2.15

Text {
    clip: true
    text: model.name
    font.pixelSize: 24

    property bool expanded: true
    readonly property ListView __lv: ListView.view
    height: expanded ? implicitHeight : 0
    Behavior on height {
        NumberAnimation  { duration: 200 }
    }
}