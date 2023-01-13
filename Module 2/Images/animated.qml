// This program describes how to show animated images in qml

import QtQuick 2.0

AnimatedImage{
    id: image
    x: 0; y: 0
    source: "sample.gif"
    width: 500 ;height: 500

    // onStatusChanged: {
    //     if (status == Image.ready) 
    //         console.log(AnimatedImage.frameCount)
    // }
}