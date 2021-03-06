import QtQuick 2.12
import QtQuick.Window 2.12
import TableModel 0.1

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    TableView {
        anchors.fill: parent
        columnSpacing: 1
        rowSpacing: 1
        clip: true

        model: TableModel {}

        delegate: Rectangle {
            implicitWidth: 100
            implicitHeight: 50
            color: "oldlace"
            border.width: 1

            Text {
                text: model.display
                anchors.centerIn: parent
            }
        }
    }
}
