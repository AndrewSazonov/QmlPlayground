#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "modelinqmlcore/tablemodel.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<TableModel>("TableModel", 0, 1, "TableModel");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));

    return app.exec();
}
