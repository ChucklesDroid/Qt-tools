// Color of elements can be specified in many ways:-

// 1) As a named color in a string( using SVG names )
// 2) With color components in a string:(HTML hex-string)
//     a) alpha, red, green and blue. #<aa-rr-gg-bb>(alpha optional)
//     b) Eg: '#ff000000', '#008000', '#0000ff', ...
// 3) Using a built-in function( red, green, blue, alpha):
//     Qt.rgba(0, 0.5, 0, 1)

// Note: item 'gradient' is not visual representation of a gradient. To display gradient, we make use of 
// a visual item( like Rectangle ) which supports the use of gradient .


import QtQuick 2.15
// For using QtQuick version 5.15 we import QtQuick 2.15, this enables us to make use of property 'orientation'

Rectangle{

    width: gradient.width; height: gradient.height

// In older QtQuick version since 'orientation' property is not supported we make use of the following 2 lines replacement to make it working
    rotation: 45
    scale: 2
// ----------------------------------------------------------------------------------------------------------------------------
    gradient: Gradient{
        id: gradient
        // orientation: Gradient.Horizontal
        GradientStop{
            color: "red"; position: 0.0
        }
        GradientStop{
            color: "#ffff00"; position: 0.5
        }
        GradientStop{
            // color: "green"; position: 1.0
            color: Qt.rgba(0,1,0,1); position: 1.0
        }
    }
}


// Problems with gradient:
// 32 bit colors only allocates 8 bits per color component which is not a lot ( it only reduces to 256 shades which is not a lot), it causes a banding effect
// in images which can be solved using dithering