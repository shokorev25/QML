import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "Калькулятор майнинга"
    color: "#FFF8E1"  // Светло-желтый фон

    property real profit: 0.0
    property var history: [] // История расчетов

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: Qt.resolvedUrl("PageMain.qml")
    }
}
