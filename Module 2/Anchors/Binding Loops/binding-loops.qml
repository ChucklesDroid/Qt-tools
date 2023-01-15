// Binding loops occur when a property of one element is bound to property of another element
// and that 'another' element's property is bound to the original elements property. This causes
// a loop and the binding is never resolved.
// Supporting articles: https://www.youtube.com/watch?v=aSMEcAmcPDc&list=PL6CJYn40gN6hdNC1IGQZfVI707dh9DPRc&index=11 ,
// https://stackoverflow.com/questions/45946808/difference-between-width-height-and-implicitwidth-height-and-corresponding-use


import QtQuick 2.0

// The below code causes a binding loop since the rectangle is basically telling the qml engine that 
// its height and width should be equal to the height and width of its child. But here the child is 
// is defining its dimensions using anchors.fill: parent, basically telling the qml engine that its 
// dimensions should be same as its parent, thereby resulting in a loop called the binding loop

// Rectangle{
//     id: root
//     height: child.height; width: child.width

//     Image{
//         id: child
//         source: "sample.jpg"
//         anchors{
//             fill: parent
//             margins: 10
//         }
//     }
// }

// To resolve this we specify implicitWidth and implicitHeight
// implicitWidth and implicitHeight are basically: "what would you like to be ?" not "what are you ?"
// These can be thought of default absolute values

// In the above example we cannot se implicit.Width=child.width as that is still ambiguos and will result in 
// a binding loop. Since we are setting default absolute dimension value of rectangle to be dimensions of child( regular dimensions not implicit)
// but the child does not have any well defined dimensions and rather depends on its parent for its dimensions.       

// To get around this we instead define implicitWidth=child.implicitWidth by doing the flow would be as follows:- 
// the rectangle will ask the child and the child instead of asking the rectangle back will take dimensions of the image


Rectangle{
    id: root
    // height: child.height; width: child.width
    implicitHeight: child.implicitHeight
    implicitWidth: child.implicitWidth

    Image{
        id: child
        source: "sample.jpg"
        anchors{
            fill: parent
            margins: 10
        }
    }
}