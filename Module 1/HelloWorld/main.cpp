#include <QtQuick>

int main( int argc, char *argv[])
{
	QGuiApplication app(argc, argv);
	QQuickView view;
	view.setSource(QUrl("main.qml"));
	view.show();
	return app.exec();
}
