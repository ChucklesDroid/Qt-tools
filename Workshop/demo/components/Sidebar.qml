import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.0

Rectangle {
    id: sidebar

    color: "#202c33"

    implicitWidth: 40
    implicitHeight: 800

    ColumnLayout {
        anchors.fill: parent

        Button {
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 28
            Layout.preferredWidth: 28
            icon {
                source: "../images/chats.png"
            }
        }
        Button {
            icon {
                source: "../images/status.png"
            }
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 28
            Layout.preferredWidth: 28
        }
        Button {
            icon {
                source: "../images/channels.png"
            }
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 28
            Layout.preferredWidth: 28
        }
        Button {
            icon {
                source: "../images/communities.png"
            }
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 28
            Layout.preferredWidth: 28
        }
        Button {
            icon {
                source: "../images/ai.png"
            }
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 28
            Layout.preferredWidth: 28
        }
        Item {
            Layout.fillHeight: true
        }
        Button {
            icon {
                source: "../images/settings.png"
            }
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 28
            Layout.preferredWidth: 28
        }
        Button {
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 28
            Layout.preferredWidth: 28
        }
    }
}
