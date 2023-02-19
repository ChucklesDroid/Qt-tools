import QtQuick 2.15

Text {
    id: txt
    text: model.name
    height: implicitHeight
    font.pixelSize: 30
    font.bold: true
}