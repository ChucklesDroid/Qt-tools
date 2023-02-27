// A signal is like a regular C++ function which returns void and takes integer argument
// We dont implement a signal i.e it does not have a function body just the declaration, the moc implements it.

#ifndef WINDOW_H
#define WINDOW_H

#include <QWindow>

class Window : public QWindow
{
    Q_OBJECT

// We do not implement signals 
    signals:
        void positionChanged(const QPoint &point);

    protected:
        void moveEvent(QMoveEvent *event) override;
};

#endif