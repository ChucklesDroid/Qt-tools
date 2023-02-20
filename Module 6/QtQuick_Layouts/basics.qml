// We have talked about 4 different ways to arrange objects on screen:-
// a) Manual Adjusting
// b) anchors Layout
// c) Positioners
// d) Layout Managers

// Layout Managers like QtQuick Layout is different than positioners in the sense that
// it also resizes its child elements

// Layouts can resize items: 
//     a) Items can enable this: Layout.fillWidth, Layout.fillHeight
// Items can specify boundaries:
//     a) Minimum and Maximum height/width
//     b) Eg: Layout.minimumWidth and Layout.maximumHeight
// Items can have implicitWidth and implicitHeight
//     a) Determined by item type, Eg: to fit the content
//     b) implicitWidth and implicitHeight
// Items specify preference:
//     a) Precedence over implicit size
//     b) Preferred width/height
//     c) Layout.preferredWidth and Layout.preferredHeight

import QtQuick 2.15
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Rectangle {
    width: 350; height: 350
    color: "grey"

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 5

        RowLayout {
            Layout.alignment: Qt.AlignTop

            Label {
                text: "Filename"
                color: Qt.darker( "black", 2 )
            }

            TextField {
            // This covers the remaining of the width of the dialog box
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.alignment: Qt.AlignBottom | Qt.AlignRight
            Button {
                text: "Ok"
            }
            Button {
                text: "Cancel"
            }
        }
    }
}