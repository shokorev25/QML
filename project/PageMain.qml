import QtQuick
import Felgo
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import "CalculatorLogic.js" as Calculator

Rectangle {
    width: parent.width
    height: parent.height
    color: "#FFF8E1"

    ScrollView {
        anchors.fill: parent
        contentWidth: parent.width

        ColumnLayout {
            width: parent.width
            spacing: 20

            Text {
                text: "Калькулятор майнинга"
                font.bold: true
                font.pixelSize: 24
                color: "#F57F17"
                anchors.horizontalCenter: parent.horizontalCenter
            }


            Button {
                text: "Рассчитать"
                onClicked: {
                    profit = Calculator.calculateProfit(hashRate, power, electricityCost, poolFee, coinPrice, blockReward);
                }
            }

            // Кнопки перехода
            Button {
                text: "Майнинг оборудование"
                onClicked: stackView.push(Qt.resolvedUrl("PageEquipment.qml"))
            }

            Button {
                text: "О калькуляторе"
                onClicked: stackView.push(Qt.resolvedUrl("PageAbout.qml"))
            }
        }
    }
}
