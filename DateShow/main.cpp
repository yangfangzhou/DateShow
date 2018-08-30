#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include "randomnum.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterType<randomnum>("Randomnum",1,0,"Randomnum");
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
