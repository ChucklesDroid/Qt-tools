// This program demonstrates advanced pinching capabilities

import QtQuick 2.15

Flickable{
    id: flick
    width: 200; height: 200
    contentWidth: 400; contentHeight: 400

    PinchArea{
        width: Math.max( flick.contentWidth, flick.width )
        height: Math.max( flick.contentHeight, flick.height )

// Defining initialWidth and initialHeight (variables of sorts) to store the initial height and initial width of the contentItem
        property real initialWidth
        property real initialHeight

// Signal handler is called when pinch is detected, and the javascript expression saves the initialHeight and initialWidth of the contentItem
        onPinchStarted:{
            initialHeight = flick.contentHeight
            initialWidth = flick.contentWidth
        }
// When its detected that user is pinching, resizeContent() is called which resizes the flick area to width*height about the center
// This does not scale the contents of the Flickable and only resizes the contentWidth and contentHeight
        onPinchUpdated:{
            flick.resizeContent( initialWidth*pinch.scale, intialHeight*pinch.scale, pinch.center)
        }
// Resizing the content may result in the content being positioned outside the bounds of the Flickable,
// calling returnToBounds() will move the content back within legal bounds
        onPinchFinished:{
            flick.returnToBounds()
        }

        Image{
            width: flick.contentWidth
            height: flick.contentHeight
            source: "sample.png"
        }
    }
}