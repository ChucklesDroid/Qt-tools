#include "window.h"
#include <QGuiApplication>
#include <QDebug>

static void printWindowPosition( const QPoint &point )
{
    qDebug() << "New Window Position is: " << point ;
}

int main( int argc, char *argv[] )
{
    QGuiApplication app(argc, argv);
    Window window;
    window.show();

// Here connect will only have 3 arguments since 'printWindowPosition' is a standalone function rather than a member function of the QObject derived clas
    QObject::connect(&window, &Window::positionChanged, printWindowPosition);
    return app.exec();
}