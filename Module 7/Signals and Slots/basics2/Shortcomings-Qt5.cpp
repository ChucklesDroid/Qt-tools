// This program focusses on overcoming the shortcomings of Qt4 (~ Qt5.6). 

#include <QtWidgets>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QWidget *window = new QWidget();
    window->setAttribute(Qt::WA_DeleteOnClose);
    QVBoxLayout *topLayout = new QVBoxLayout(window);

    //Setting up Slider and display count 
    QSlider *slider = new QSlider(Qt::Horizontal);
    slider->setRange(0,100);
    QLCDNumber *led = new QLCDNumber(3); // sets the number of digits to 3

    QHBoxLayout *horizontalLayout = new QHBoxLayout;
    horizontalLayout->addWidget(slider) ;
    horizontalLayout->addWidget(led) ;
    topLayout->addLayout(horizontalLayout) ;

// This accounts for the shortcoming of overloaded functions till Qt5.6
    QObject::connect(slider, &QSlider::valueChanged,
                     led, 
                    //  Old implementation before Qt5.7
                    //  static_cast<void (QLCDNumber::*)(int)>(&QLCDNumber::display) );
                    // C++ 11 implementation of Qml
                    //  QOverload<int>::of(&QLCDNumber::display) );
                    //  C++ 14 implementation
                    qOverload<int>(&QLCDNumber::display) );

    slider->setValue( 40 ) ;
    window->show() ;

    return app.exec();
}