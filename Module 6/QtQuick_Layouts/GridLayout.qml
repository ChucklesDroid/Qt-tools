import QtQuick 2.15
import QtQuick.Layouts 1.14
import QtQuick.Controls 2.14

Item {
    width: 600; height: 400

    GridLayout {
        anchors.fill: parent
        anchors.margins: 5

        columns: 3

// Auto positioning based on flow
        Button {
            text: "One"
            Layout.alignment: Qt.AlignTop
            Layout.fillWidth: true
        }
        Button {
            text: "Two"
            Layout.alignment: Qt.AlignTop
            Layout.fillWidth: true
        }
        Button {
            text: "Three"
            Layout.alignment: Qt.AlignTop
            Layout.fillWidth: true
        }
        Button {
            text: "Four"
            Layout.fillWidth: true
        }
// Specific Positioning the Button
        Button {
            text: "Five"
            Layout.fillWidth: true
            Layout.column: 2
            Layout.row: 1
        }

        Label {
            text: "File"
            color: "black"
        }
        TextEdit {
            Layout.fillWidth: true
            Layout.columnSpan: 2
            text: "Enter Filename"
            cursorVisible: true
            focus: true
        }
        Label {
            text: "comment"
            color: "black"
        }
        TextEdit {
            Layout.fillWidth: true
            Layout.columnSpan: 2
            Layout.rowSpan: 2
            Layout.fillHeight: true
            cursorVisible: true
        }
        Button {
            Layout.alignment: Qt.AlignBottom
            text: "send"
        }
    }
}