#include <iostream>
#include <QtQuick>

int main( int argc, char *argv[])
{
	QtGuiApplication app(argc, argv);
	QtQuickView view;
	view.setSource(QUrl("main.qml");
	view.show();
	return app.exec();
}
