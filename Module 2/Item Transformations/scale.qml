// This program demonstrates use of 'scale' for transformation 
// The key aspect is when applying scale it does not change the size of the image, its just for the
// person viewing the image.

import QtQuick 2.0

Item{
    width: 500; height: 500

    Rectangle{
        x: 150; y: 150
        height: image.height*2; width: image.width*2
        color: "red"
        Image{
            id: image
            x: 58; y: 58
            source: "../Images/sample.png"
            // scale: 2.0
        }
    }
}
