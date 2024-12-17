import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    id: window
    width: 400
    height: 600
    visible: true
    title: "Task_for_Layout"

    property string headerText: "Header"
    property string contentText: "Content"
    property bool showBackArrow: false

    Rectangle {
        id: header
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height * 0.1
        color: "darkgray"

        RowLayout {
            anchors.fill: parent
            spacing: 10

            Text {
                id: backArrow
                text: showBackArrow ? "<" : ""
                color: "black"
                font.pointSize: 16
                visible: showBackArrow
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        window.headerText = "Header"
                        window.contentText = "Content"
                        showBackArrow = false
                    }
                }
            }

            Text {
                id: headerTextItem
                text: window.headerText
                color: "black"
                font.pointSize: 16
                Layout.alignment: Qt.AlignHCenter
            }
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
            id: contentTextItem
            anchors.centerIn: parent
            text: window.contentText
            color: "black"
            font.pointSize: 16
        }

        states: [
            State {
                name: "updated"
                PropertyChanges { target: contentTextItem; opacity: 1.0 }
            }
        ]

        transitions: [
            Transition {
                from: "*"
                to: "updated"
                PropertyAnimation { target: contentTextItem; property: "opacity"; duration: 500 }
            }
        ]
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

            ButtonComponent {
                id: button1
                buttonText: "1"
                onButtonClicked: {
                    window.headerText = "Button 1 Pressed"
                    window.contentText = "You clicked on Button 1!"
                    showBackArrow = true
                    button1.opacityValue = 1.0
                    button2.opacityValue = 0.3
                    button3.opacityValue = 0.3
                }
            }

            ButtonComponent {
                id: button2
                buttonText: "2"
                onButtonClicked: {
                    window.headerText = "Button 2 Pressed"
                    window.contentText = "You clicked on Button 2!"
                    showBackArrow = true
                    button2.opacityValue = 1.0
                    button1.opacityValue = 0.3
                    button3.opacityValue = 0.3
                }
            }

            ButtonComponent {
                id: button3
                buttonText: "3"
                onButtonClicked: {
                    window.headerText = "Button 3 Pressed"
                    window.contentText = "You clicked on Button 3!"
                    showBackArrow = true
                    button3.opacityValue = 1.0
                    button1.opacityValue = 0.3
                    button2.opacityValue = 0.3
                }
            }
        }
    }
}
