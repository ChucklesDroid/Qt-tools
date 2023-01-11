//This program demonstrates the use of z element

import QtQuick 2.0

Item{
    height: 200; width: 400

    Rectangle{
        x: 100; y:50
        height: 100
        width: 200
        color: "lightblue"
    }

//By default the first in stack is displayed lower. As in this example we will put the first rectangle lower than 2nd rectangle
//but we can change this behaviour by manipulating the z behaviour.

    Rectangle{
        x:100; y:100; z:-1
        height: 100
        width: 200
        color: "green"
    }
}
