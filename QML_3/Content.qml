import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: content
    anchors.top: header.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: footer.top
    color: "lightgray"

    property string contentText: "Content"

    Text {
        anchors.centerIn: parent
        text: content.contentText
        color: "black"
        font.pointSize: 16
    }
}
