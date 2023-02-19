
import QtQuick 2.15

Rectangle {
    width: 400; height: 400; color: "black"

    Grid {
        x: 5; y: 5
        rows: 5; columns: 5; spacing: 10

        Repeater {
            model: 24
// Loading the delegate component from a seperate file called 'MyRect', '{}' at the end 
// is used to instantiate the contents of the file 
            delegate: MyRect{}
        }
    }
}