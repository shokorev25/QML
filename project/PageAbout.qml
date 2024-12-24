import QtQuick
import Felgo
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

Rectangle {
    width: parent.width
    height: parent.height
    color: "#FFF8E1"

    ColumnLayout {
        anchors.fill: parent
        spacing: 20

        Text {
            text: "О калькуляторе"
            font.bold: true
            font.pixelSize: 24
            color: "#F57F17"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "Это приложение калькулятора майнинга предоставляет пользователям инструменты для оценки прибыли от майнинга."
            font.pixelSize: 16
            color: "#F57F17"
            wrapMode: Text.Wrap
        }

        Button {
            text: "Назад"
            onClicked: stackView.pop()
        }
    }
}
