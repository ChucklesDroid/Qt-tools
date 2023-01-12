// This program describes how borderImage works in QML and will implement the following with it
// in this case an image is divided into 9 parts using 2 vertical and 2 horizontal lines. The 4 corners
// are not scaled( 1, 3, 7, 9 ) while the 4 edges are scaled according to the properties specified( 2, 4, 5, 6, 8)

// The regions 2 and 8 are scaled according to horizontalTileMode and regions 4 and 6 are scaled according to verticalTileMode.
// And region 5 is scaled according to both modes

// There are 3 different scale modes:-
// Stretch: scale the image to fit available area
// Repeat: tile the image until there is no available space
// Round: similar to Repeat but scales the image down to ensure there is no cropping of the last image

import QtQuick 2.0

BorderImage{
    source: "sample.png"
    width: 500; height: 500
// The properties are initialised compoundly instead of initialising it individualy
    border{ left: 30; right: 30; top: 30; bottom: 30 }
    // horizontalTileMode: BorderImage.Stretch
    horizontalTileMode: BorderImage.Round
    // horizontalTileMode: BorderImage.Repeat
    // verticalTileMode: BorderImage.Repeat
    verticalTileMode: BorderImage.Round
}
