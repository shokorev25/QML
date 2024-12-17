import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("Task_for_ListView_Model")

    property int defMargin: 8

    ListModel {
        id: my_model
        ListElement { name: "Привет! Как дела?"; time: "10:30" }
        ListElement { name: "Всё хорошо, спасибо!"; time: "10:32" }
    }

    Page {
        id: page
        anchors.fill: parent

        ListView {
            id: listView
            anchors.fill: parent
            model: my_model
            delegate: Item {
                width: parent.width
                height: 50
                Row {
                    spacing: 10
                    anchors.fill: parent

                    Text {
                        text: name
                        font.pixelSize: 14
                        color: "black"
                        horizontalAlignment: Text.AlignLeft
                    }

                    Text {
                        text: time
                        font.pixelSize: 12
                        color: "gray"
                        horizontalAlignment: Text.AlignRight
                    }
                }
            }
        }

        footer: Rectangle {
            color: "#f0f0f0"
            height: 60
            width: parent.width
            border.color: "lightgray"

            Row {
                anchors.fill: parent
                spacing: 8
                anchors.margins: 8

                TextField {
                    id: messageInput
                    width: parent.width - sendButton.width - 16
                    placeholderText: "Введите сообщение..."
                }

                Button {
                    id: sendButton
                    text: "Отправить"
                    onClicked: {
                        if (messageInput.text.trim() !== "") {
                            var newMsg = { name: messageInput.text, time: Qt.formatTime(new Date(), "hh:mm") };
                            my_model.append(newMsg);
                            listView.positionViewAtEnd(); // Прокрутка вниз к новому сообщению
                            messageInput.text = ""; // Очистка поля ввода
                        }
                    }
                }
            }
        }
    }
}
