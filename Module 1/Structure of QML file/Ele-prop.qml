//This program demonstrates that qml supports javascript expressions{ is basically javascript application }

import QtQuick 2.0

Item{
    width: 400; height: 200

    Rectangle{
        x: 100; y: 50
        height: 100
//        width: height*2
        width: foo(height)
        color: "lightblue"
    }

    function foo(height){
        console.log("HelloWorld", height)
        return height*2
    }
}
