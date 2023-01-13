// This program demonstrates the use of custom transformations in qml

import QtQuick 2.0

Rectangle {
    width: background.width; height: background.height
    color: "grey"

    Image{
        id: background
        source: "background.png"
    }

    Image{
        id: center
        source: "center.png"
        x: background.width/2-10  ; y: background.height/2-10; z: 2
    }

    Image{
        id: hour
        source: "hour.png"
        x: background.width/2-7  ; y: background.height/2-10; 
        transform: Rotation{
            origin.x: hour.width/2
            origin.y: 10
        
        RotationAnimation on angle{
            from: 0; to: 360*2
            duration: 6000
            loops: Animation.Infinite
        }
        }
    }

    Image{
        id: minute
        source: "minute.png"
        x: background.width/2-6  ; y: background.height/2-10; 

        transform: Rotation{
            origin.x: minute.width/2; origin.y: 10

            RotationAnimation on angle{
                from: 0; to: 360*2
                duration:3000
                loops: Animation.Infinite
            }
        }
    }

    Image{
        id: second
        source: "second.png"
        x: background.width/2-2  ; y: background.height/2-10; 

        transform: Rotation{
            origin.x: second.width/2; origin.y: 10

            RotationAnimation on angle{
                from: 0; to: 360*2
                duration: 1500
                loops: Animation.Infinite
            }
        }
    }
}