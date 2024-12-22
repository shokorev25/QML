import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Светофор"

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: pageRed
    }

    Component {
        id: pageRed
        Rectangle {
            color: "red"
            anchors.fill: parent

            Button {
                text: "To Green"
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                onClicked: stackView.push(pageGreen)
            }

            Button {
                text: "To Yellow"
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                onClicked: stackView.push(pageYellow)
            }

            Button {
                text: "Назад"
                anchors.top: parent.top
                anchors.left: parent.left
                onClicked: stackView.pop()
            }
        }
    }

    Component {
        id: pageGreen
        Rectangle {
            color: "green"
            anchors.fill: parent

            Button {
                text: "To Red"
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                onClicked: stackView.push(pageRed)
            }

            Button {
                text: "To Yellow"
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                onClicked: stackView.push(pageYellow)
            }

            Button {
                text: "Назад"
                anchors.top: parent.top
                anchors.left: parent.left
                onClicked: stackView.pop()
            }
        }
    }

    Component {
        id: pageYellow
        Rectangle {
            color: "yellow"
            anchors.fill: parent

            Button {
                text: "To Red"
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                onClicked: stackView.push(pageRed)
            }

            Button {
                text: "To Green"
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                onClicked: stackView.push(pageGreen)
            }

            Button {
                text: "Назад"
                anchors.top: parent.top
                anchors.left: parent.left
                onClicked: stackView.pop()
            }
        }
    }
}
