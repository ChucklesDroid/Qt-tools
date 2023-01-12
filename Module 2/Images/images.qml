// This program demonstrates how we can load images locally available

import QtQuick 2.0


Rectangle{
    width: 500; height: 500
    color: "#00a3fc"

    Image{
    // If the dimension is not specified it will assign a width and height accordingly
        x: 0; y: 0
        source: "/home/aakarshmj-msi/Wallpapers/6512.jpg"
    // But since here a dimension is provided it will scale accordingly
        height: 500; width: 500
    }
}