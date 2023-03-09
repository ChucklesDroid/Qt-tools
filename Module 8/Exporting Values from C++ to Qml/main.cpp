#include <QGuiApplication>
#include <QQuickView>
#include <QQmlContext>
#include <QQmlEngine>
#include <QDateTime>

int main (int argc, char* argv[]) 
{
    QGuiApplication app(argc, argv);
    QQuickView view;
    QQmlContext* context = view.engine()->rootContext(); // this can now be written as view.rootContext() instead

    context->setContextProperty("_aString", QString("KDAB"));
    context->setContextProperty("_aSize", QSize(600,800));
    context->setContextProperty("_background", QColor(Qt::lightGray));

    view.setSource(QUrl("main.qml"));
    view.show();
    return app.exec();
}