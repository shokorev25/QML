import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    id: window
    width: 400
    height: 600
    visible: true
    title: "Task_for_Layout"

    Rectangle {
        id: header
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height * 0.1
        color: "darkgray"

        Text {
            anchors.centerIn: parent
            text: "Header"
            color: "black"
            font.pointSize: 16
        }
    }

    Rectangle {
        id: content
        anchors.top: header.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: footer.top
        color: "lightgray"

        Text {
            anchors.centerIn: parent
            text: "Content"
            color: "black"
            font.pointSize: 16
        }
    }

    Rectangle {
        id: footer
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height * 0.1
        color: "darkgray"

        RowLayout {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 10

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: parent.height
                color: "lightgray"

                Text {
                    anchors.centerIn: parent
                    text: "1"
                    color: "black"
                    font.pointSize: 16
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: parent.height
                color: "lightgray"

                Text {
                    anchors.centerIn: parent
                    text: "2"
                    color: "black"
                    font.pointSize: 16
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: parent.height
                color: "lightgray"

                Text {
                    anchors.centerIn: parent
                    text: "3"
                    color: "black"
                    font.pointSize: 16
                }
            }
        }
    }
}
