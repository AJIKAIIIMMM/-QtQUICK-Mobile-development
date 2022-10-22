import QtQuick 2.5
import QtQuick.Controls 1.3
import QtQuick.Dialogs 1.2

ApplicationWindow {
visible: true
width: 640
height: 768
title: qsTr("Hello World")

Item {
    width: 640
    height: 480
    Rectangle {
        id: emailRec
        x: 195
        y: 180
        width: 255
        height: 40
        color: "#ffffff"
        border.color: "#333333"
        border.width: 1

        MouseArea {
            id: emailMouseArea
            x: 0
            y: 0
            width: 255
            height: 40
        }
    }
    Rectangle {
        id: passRec
        x: 195
        y: 302
        width: 255
        height: 40
        color: "#ffffff"
        border.color: "#333333"
        border.width: 1

        MouseArea {
            id: passMouseArea
            x: 0
            y: 0
            width: 255
            height: 40
        }
    }

    Text {
        id: emailLabel
        x: 195
        y: 149
        text: qsTr("Email")
        font.family: "Verdana"
        font.pixelSize: 21
    }

    Text {
        id: passLabel
        x: 195
        y: 271
        text: qsTr("Password")
        font.family: "Verdana"
        font.pixelSize: 21
    }

    TextInput {
        id: emailInput
        x: 205
        y: 185
        width: 230
        height: 29
        text: ""
        font.family: "Verdana"
        font.pixelSize: 21
        selectByMouse: true
        editingFinished: {

        }

    }
    TextInput {
        id: passInput
        x: 205
        y: 308
        width: 230
        height: 29
        text: ""
        font.pixelSize: 21
        selectByMouse: true
    }

    Rectangle {
        id: submitBtnRec
        x: 195
        y: 385
        width: 255
        height: 40
        color: "#ffffff"

        MouseArea {
            id: submitMouseArea
            x: 0
            y: 0
            width: 255
            height: 40
            onClicked: {
                var email = emailInput.text
                var password = passInput.text
                your_api.login(email,password)
            }
        }
    }
    Text {
        id: submitLabel
        x: 279
        y: 393
        text: qsTr("SUBMIT")
        font.family: "Verdana"
        font.pixelSize: 21
    }

}


Text {
    y: 58
    text: "uniqCast"
    font.bold: true
    font.family: "Verdana"
    anchors.horizontalCenterOffset: 1
    anchors.horizontalCenter: parent.horizontalCenter
    color: "#2ecc71"
    font.pixelSize: 28
}

MessageDialog {
    id: messageDialog
    title: qsTr("May I have your attention, please?")

    function show(caption) {
        messageDialog.text = caption;
        messageDialog.open();
    }
}
}
