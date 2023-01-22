// This program describes the use of flicking to move the target( in this case an image )
// Swiping is different than just flicking and will be discussed with ListView

import QtQuick 2.15

Flickable{
    id: flick
// here width and height describe the size of the area through which we see the content{ i.e contentItem )
    height: 400
    width: 400
// here contentWidth and contentHeight describe the size of the area controlled by Flickable
    contentHeight: 1000; contentWidth: 1000

    Image{
// Do not specify height or width as parent.contentHeight or parent.contentWidth as image is not the child 
// element of Flickable rather its the child element of contentItem not Flickable
        height: flick.contentHeight
        width: flick.contentWidth
        source: "sample.png"
    }

}