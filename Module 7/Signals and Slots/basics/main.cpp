// This program explains the use of SIGNAL/SLOT macro in QObject::connect funciton

#include <QtWidgets>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QWidget *window = new QWidget();
    window->setAttribute(Qt::WA_DeleteOnClose);
    QVBoxLayout *topLayout = new QVBoxLayout(window);

    // Set up of GUI
    QSlider *slider = new QSlider(Qt::Horizontal);
    slider->setRange(0, 100);

    QSpinBox *spin = new QSpinBox;
    spin->setReadOnly( true );

    QHBoxLayout *horizontalLayout = new QHBoxLayout;
    horizontalLayout->addWidget(slider);
    horizontalLayout->addWidget(spin);
    topLayout->addLayout(horizontalLayout);

    QObject::connect(slider, SIGNAL(valueChanged(int)),
                     spin, SLOT(setValue(int)));
    slider->setValue(40);

    window->show();
    return app.exec();
}
