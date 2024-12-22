import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    property var stack

    color: "green"

    Button {
        text: "To Red"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        onClicked: {
            stack.push(Qt.resolvedUrl("PageRed.qml"), { stack: stack })
        }
    }

    Button {
        text: "To Yellow"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        onClicked: {
            stack.push(Qt.resolvedUrl("PageYellow.qml"), { stack: stack })
        }
    }

    Button {
        text: "Назад"
        anchors.top: parent.top
        anchors.left: parent.left
        onClicked: {
            stack.pop()
        }
    }
}
