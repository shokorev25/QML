import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: window
    width: 400
    height: 600
    visible: true
    title: "Task_for_Layout"

    property string headerText: "Header"
    property string contentText: "Content"

    Header {
        id: header
        headerText: window.headerText
    }

    Content {
        id: content
        contentText: window.contentText
    }

    Footer {
        id: footer
        onButtonClicked: {
            window.headerText = "Button " + buttonIndex + " Pressed";
            window.contentText = "You clicked on Button " + buttonIndex + "!";
        }
    }
}
