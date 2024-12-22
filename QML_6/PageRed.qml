import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    property var stack  // Свойство для хранения ссылки на StackView

    color: "red"

    Button {
        text: "To Green"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        onClicked: {
            stack.push(Qt.resolvedUrl("PageGreen.qml"), { stack: stack })
        }
    }

    Button {
        text: "To Yellow"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
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
