#include "stopwatch.h"
#include <QCoreApplication>

int main( int argc, char *argv[] )
{
    QCoreApplication app(argc,argv);
    Stopwatch watch;
    return app.exec();
}