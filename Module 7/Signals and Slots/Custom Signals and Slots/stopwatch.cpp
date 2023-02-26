#include "stopwatch.h"
#include <chrono>
using namespace std::chrono_literals;

#include <QTimer>
#include <QDebug>

Stopwatch::Stopwatch(QObject *parent)
    : QObject(parent), m_secs(0)
{
    QTimer *timer = new QTimer(this); // this operator means timer object is created as a child of Stopwatch
    connect( timer, &QTimer::timeout,
            this, &Stopwatch::addOneSecond);
    timer->start(1s);
}

void Stopwatch::addOneSecond()
{
    m_secs += 1;
    const QString str = QString::asprintf("%d:%2d", m_secs/60, m_secs%60) ;
    qDebug() << str;
}