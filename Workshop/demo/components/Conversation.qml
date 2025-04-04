//import QtQuick 2.12
//import QtQuick.Controls 2.15
//import QtQuick.Layouts 1.0

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

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
            //Layout.fillWidth: true
            //Layout.fillHeight: true

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

    Item {
        id: filterChips
        anchors {
            top: searchBar.bottom
            left: parent.left
            leftMargin: 10
            topMargin: 10
            right: parent.right
        }

        Flow {
            //id: filterChips

            anchors.fill: parent
            //anchors {
            //    top: searchBar.bottom
            //    left: parent.left
            //    leftMargin: 10
            //    topMargin: 10
            //    right: parent.right
            //}
            spacing: 3
            anchors {}
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
                            //color: ""
                            elide: Text.ElideRight
                        }
                    }
                }
            }
        }
    }

    ListView {
        id: conversationListView

        //TODO: fix anchors here
        anchors {
            top: filterChips.bottom
            topMargin: 40
            left: parent.left
            leftMargin: 10
            right: parent.right
        }
        //clip: true
        //anchors.fill: parent

        ListModel {
            id: conversationListModel
            ListElement { 
                name: "John Nolan" 
                time: ""
                chat: "I want to be a TO!"
            }
            ListElement {
                name: "Nyla Harper"
                time: ""
                chat: "I think I can smell meth in the air!"
            }
            ListElement {
                name: "Wesley Evers"
                time: ""
                chat: "DA wants to charge you!"
            }
            ListElement {
                name: "Tim Bradford"
                time: ""
                chat: "Pickup your cellphone boot!"
            }
        }

        model: conversationListModel
        delegate: Rectangle {
            color: "#2b3842"
            width: conversationList.width
            height: contactName.implicitHeight + chat.implicitWidth

            ColumnLayout {
                anchors.fill: parent
                spacing: 0

                RowLayout {
                    Layout.fillWidth: true

                    Text {
                        id: contactName
                        text: model.name
                        color: "white"
                    }
                    Item {
                        Layout.fillWidth: true
                    }
                    Text {
                        text: "test"
                        color: "white"
                    }
                }

                Text {
                    id: chat
                    Layout.fillWidth: true
                    text: model.chat
                    color: "white"
                }
            }
        }
    }
}
