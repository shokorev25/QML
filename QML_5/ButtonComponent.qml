import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: button
    width: 50
    height: 50
    color: "lightgray"
    border.color: "black"

    property string buttonText: "Button"
    property real opacityValue: 1.0

    signal buttonClicked

    states: [
        State {
            name: "active"
            PropertyChanges { target: buttonTextItem; opacity: 1.0 }
        },
        State {
            name: "inactive"
            PropertyChanges { target: buttonTextItem; opacity: 0.3 }
        }
    ]

    transitions: [
        Transition {
            from: "*"
            to: "*"
            PropertyAnimation {
                target: buttonTextItem
                property: "opacity"
                duration: 500
            }
        }
    ]

    Text {
        id: buttonTextItem
        anchors.centerIn: parent
        text: button.buttonText
        color: "black"
        opacity: button.opacityValue
        font.pointSize: 16
    }

    MouseArea {
        anchors.fill: parent
        onClicked: buttonClicked()
    }
}
