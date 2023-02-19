// This program is a rewrite of Module6/basics.qml using repeater

import QtQuick 2.15

Grid {
    x: 15; y: 15; width: 300; height: 300
    rows: 2; columns: 2; spacing: 10

    Repeater {
        model: ["red", "green", "gray", "blue"] 
        Rectangle {
            width: 125; height: 125
            color: model.modelData
        }
    }
}