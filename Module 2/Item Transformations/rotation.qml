// This program is used to demonstrate the rotation aspect of transformations

import QtQuick 2.0

Rectangle{
    height: 500; width: 500
    color: "lightblue"

    Image{
        id: rocket
        x: 100; y: 100
        source: "sample.png"
// Clockwise 45 degree rotation of the rocket
        rotation: 45.0
// Setting the centre of rotation of rocket as its top-left
        transformOrigin: Item.TopLeft
    }
}
