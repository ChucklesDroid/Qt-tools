import QtQuick 2.12
import QtQuick.Layouts 1.0
import "components" as Components

Rectangle {
    id: root

    RowLayout {
        anchors.fill: parent
        spacing: 0

        Components.Sidebar {
            Layout.fillHeight: true
        }
        Components.Conversation {
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
