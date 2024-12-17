import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: footer
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    height: parent.height * 0.1
    color: "darkgray"

    signal buttonClicked(int buttonIndex)

    RowLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height
            color: "lightgray"
            border.color: "black"

            Text {
                id: buttonText1
                anchors.centerIn: parent
                text: "1"
                color: "black"
                font.pointSize: 16
            }

            MouseArea {
                anchors.fill: parent
                onClicked: footer.buttonClicked(1)
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height
            color: "lightgray"
            border.color: "black"

            Text {
                id: buttonText2
                anchors.centerIn: parent
                text: "2"
                color: "black"
                font.pointSize: 16
            }

            MouseArea {
                anchors.fill: parent
                onClicked: footer.buttonClicked(2)
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height
            color: "lightgray"
            border.color: "black"

            Text {
                id: buttonText3
                anchors.centerIn: parent
                text: "3"
                color: "black"
                font.pointSize: 16
            }

            MouseArea {
                anchors.fill: parent
                onClicked: footer.buttonClicked(3)
            }
        }
    }
}
