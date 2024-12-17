import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    Item {
        anchors.fill: parent
        id: a
        width: 500

        Rectangle {
            id: rect_blue
            width: 100; height: 100
            color: "blue"
            anchors.horizontalCenter: a.horizontalCenter
            anchors.bottom: rect_red.top
            anchors.bottomMargin: 0
        }

        Rectangle {
            id: rect_red
            width: 150; height: 100
            color: "red"
            anchors.horizontalCenter: a.horizontalCenter
            anchors.bottom: rect_orange.top
            anchors.bottomMargin: 0

        }

        Rectangle {
            id: rect_orange
            width: 200; height: 100
            color: "orange"
            anchors.horizontalCenter: a.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
        }
    }
}
