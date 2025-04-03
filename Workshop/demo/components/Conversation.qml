import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.0

Rectangle {
    id: conversationList
    color: "#101a21"

    implicitWidth: 600
    implicitHeight: 800

    RowLayout {
        id: titleBar

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        Text {
            text: "Chats"
            color: "#d6dcdf"
            font.pointSize: 24
            Layout.leftMargin: 12
        }

        Item {
            Layout.fillWidth: true
        }

        Button {
            id: newChat
            icon {
                source: "../images/new-chat.png"
            }
            Layout.preferredWidth: 32
            Layout.preferredHeight: 32
        }

        Button {
            id: hamburgerIcons
            icon {
                source: "../images/hamburger-menu-dots.png"
            }
            Layout.preferredWidth: 32
            Layout.preferredHeight: 32
            Layout.rightMargin: 12
        }
    }

    Rectangle {
        id: searchBar
        color: "#202c33"

        implicitHeight: 32

        anchors {
            top: titleBar.bottom
            left: parent.left
            right: parent.right
            margins: 12
        }

        RowLayout {
            anchors.fill: parent

            Image {
                id: searchIcon
                source: "../images/search.png"
                Layout.preferredHeight: 28
                Layout.preferredWidth: 28
            }

            TextField {
                id: searchString

                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "white"
                background: null
            }
        }
    }

    Flow {
        id: filterChips

        anchors {
            top: searchBar.bottom
            left: parent.left
            leftMargin: 10
            topMargin: 10
            right: parent.right
        }
        spacing: 3
        Repeater {
            model: ListModel {
                ListElement {text: "All"}
                ListElement {text: "Unread"}
                ListElement {text: "Favourites"}
                ListElement {text: "Groups"}
            }

            RoundButton {
                id: chip

                checkable: true
                hoverEnabled: true
                radius: 6
                contentItem: RowLayout {
                    Label {
                        Layout.alignment: Qt.AlignHCenter
                        text: model.text
                        elide: Text.ElideRight
                    }
                }
            }
        }
    }
}
