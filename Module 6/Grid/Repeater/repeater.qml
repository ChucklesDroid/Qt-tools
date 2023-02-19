import QtQuick 2.15

Rectangle {
    width: 400; height: 400; color: "black"

    Grid {
        x: 5; y: 5
        rows: 5; columns: 5; spacing: 10

// It basically repeats number of item-based components using a provided model
        Repeater {
// model basically describes where to fetch the data from. In larger projects this is 
// a c++ model. In this case its just a number i.e 24
            model: 24
// it specifies how the data will be dispalyed using the delegate
            delegate: Rectangle {
                width: 70; height: 70
                color: "lightgreen"
            }
        }
    }
}