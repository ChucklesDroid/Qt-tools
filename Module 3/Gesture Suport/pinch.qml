// This program describes use of pinch gesture support

import QtQuick 2.15

Flickable{
    id: flick
    width: 200; height: 200
    contentWidth: 1000; contentHeight: 1000

// PinchArea is specified under Flickable
    PinchArea{
        anchors.fill: parent
        pinch.target: img
        pinch.maximumScale: 1.0
        pinch.minimumScale: 0.1
        pinch.dragAxis: Pinch.XAndYAxis
    }

    Image{
        id: img
        source: "sample.png"
        // height: flick.contentHeight; width: flick.contentWidth
        height: flick.height; width: flick.width
    }

}