// So with this program we are basically demonstrating that 
// qml is basically a declarative language and different from 
// c and c++

import QtQuick 2.0

Item{
    width: height*2; height: 200
    
    TextInput{
        id: textElement
        x: 50; y:25
        text: "Qt Quick"
        font.family: "Hack Nerd Font"; font.pixelSize: 50
    }

    Rectangle{
        x: 50; y: 100; height: 5
// Here we describe width as relative to width of textElement,
// and the size of the rectangle will keep on increasing as the 
// length of the text changes and since its a "TextInput", its size
// will change
        width: textElement.width
        color: "red"
    }
}