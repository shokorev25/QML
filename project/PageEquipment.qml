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
            text: "Майнинг оборудование"
            font.bold: true
            font.pixelSize: 24
            color: "#F57F17"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        ListView {
            model: ListModel {
                ListElement { name: "ASIC Miner" }
                ListElement { name: "GPU Miner" }
                ListElement { name: "FPGA Miner" }
            }

            delegate: Item {
                Text {
                    text: model.name
                    anchors.centerIn: parent
                }
            }
        }

        Button {
            text: "Назад"
            onClicked: stackView.pop()
        }
    }
}
