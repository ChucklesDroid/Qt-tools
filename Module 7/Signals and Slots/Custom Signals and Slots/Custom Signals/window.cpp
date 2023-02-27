#include "window.h"
#include <QMoveEvent>

void Window::moveEvent( QMoveEvent *event )
{
    QWindow::moveEvent(event);
    emit positionChanged(event->pos());
}