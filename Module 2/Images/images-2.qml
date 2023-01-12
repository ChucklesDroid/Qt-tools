// This program demonstrates the asynchronous aspect of Qml when loading images over the web
// we can make this behaviour explicit by initializing 'asynchronous' to true
import QtQuick 2.0

Image{
    id: image
    width: 1000; height: 1000
    source: "https://eoimages.gsfc.nasa.gov/images/imagerecords/74000/74393/world.topo.200407.3x5400x2700.jpg"
    fillMode: Image.PreserveAspectFit
    Rectangle{
        color: "lightblue"
        x: 0; y: 750;
        height: 50
    // The 'progress' variable holds a value b/w 0.0 to 1.0 ( 0 being image is not at all loaded and 1 being fully loaded )
        width: 1000 * progress
    // The rectangle will be visible as long as the image is not fully loaded
        visible: progress != 1
    }
    
    onStatusChanged: console.log(sourceSize)
}
