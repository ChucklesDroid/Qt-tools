import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: sidebar

    color: "#202c33"

    implicitWidth: 60
    implicitHeight: 800

    ColumnLayout {
        anchors.fill: parent

        Button {
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
            icon {
                source: "../images/chats.png"
            }
        }
        Button {
            icon {
                source: "../images/status.png"
            }
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
        }
        Button {
            icon {
                source: "../images/channels.png"
            }
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
        }
        Button {
            icon {
                source: "../images/communities.png"
            }
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
        }
        Button {
            icon {
                source: "../images/ai.png"
            }
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
        }
        Item {
            Layout.fillHeight: true
        }
        Button {
            icon {
                source: "../images/settings.png"
            }
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
        }
        Button {
            icon {
                source: "../images/me.png"
            }
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
        }
    }
}
