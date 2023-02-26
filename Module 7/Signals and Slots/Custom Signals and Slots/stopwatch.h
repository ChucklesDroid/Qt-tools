#ifndef STOPWATCH_H
#define STOPWATCH_H

#include <QObject>

class Stopwatch : public QObject 
{
    Q_OBJECT    // flag for moc

    public:
        explicit Stopwatch(QObject *parent = nullptr) ;

    private slots:
        void addOneSecond();

    private:
        int m_secs;
};

#endif
