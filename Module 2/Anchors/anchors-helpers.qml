// There are two special anchors:-
// 1) fill
// 2) centerIn

import QtQuick 2.0

Rectangle{
    id: root
    color: "lightblue"
    width: 200; height: 200

    // Rectangle{
    //     id: child1
    //     color: "pink"
    //     height: 50; width: 50
    //     anchors{
    //         centerIn: parent
    //     }
    // }

    Rectangle{
        id: child2
        color: "pink"
        anchors{
            fill: parent
    // Assigning all the margins at once
            margins: 10
        }
    }   
}