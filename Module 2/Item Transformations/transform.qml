// Transformations are used not just with images but also every other item type
// Just like position, its position is relative to its parent i.e its effect is present
// in its child elements


// There are 3 control properties:
// 1) Opacity
// 2) Scale
// 3) Rotation


// This particular program demonstrates that opacity is inherited
// by child elements
import QtQuick 2.0

// Opacity Example
Rectangle{
    height: 500; width: 500
    color: "lightblue"

    Rectangle{
        x: 50; y: 50
        width: 250; height: 250
        color: white
        opacity: 0.5
    
        Rectangle{
            x: 100; y: 10
            height: 50; width: 300
            color: "red"
            opacity: 0.5
        }

        Rectangle{
            x: 100; y: 70
            height: 50; width: 300
            color: "red"
        }
    }

    Rectangle{
        x: 150; y: 180
        height: 50; width: 300
        color: "red"
        opacity: 0.5
    }

    Rectangle{
        x: 150; y: 240
        height: 50; width: 300
        color: "red"
    }

}