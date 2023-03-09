import QtQuick 2.15

Rectangle {
    width: _aSize.width
    height: _aSize.height
    color: _background

    Column {
        anchors.centerIn: parent
        spacing: 10
        Text{ text: "The string is:" + _aString }
        Text{ text: "The size is:" + _aSize }
    }
}