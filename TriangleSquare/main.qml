import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import com.company.trisquare 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    TriSquare {
        id: countSquare
    }


    RowLayout {
        id: rowLayout
        x: 84
        y: 57
        width: 178
        height: 28

        TextField {
            id: numberAbox

            placeholderText: "Task..."
            validator: DoubleValidator{bottom: 0; decimals: 1000; top: 9999;}
            anchors.fill: parent
            selectByMouse: true
            anchors.margins: 4
            focus: true
            horizontalAlignment: Text.AlignHLeft
            verticalAlignment: Text.AlignVCenter
            KeyNavigation.tab: deadlineBox
        }
    }

        Text {
            id: text1
            x: 39
            y: 61
            width: 21
            height: 21
            text: qsTr("A")
            font.pixelSize: 12
        }

        Text {
            id: text2
            x: 39
            y: 88
            width: 15
            height: 21
            text: qsTr("B")
            font.pixelSize: 12
        }

        Text {
            id: text3
            x: 39
            y: 115
            width: 15
            height: 17
            text: qsTr("C")
            font.pixelSize: 12
        }



        Text {
            id: text4
            x: 69
            y: 23
            text: qsTr("Triangle square via his sides")
            font.pixelSize: 12
        }

        RowLayout {
            id: rowLayout1
            x: 84
            y: 84
            width: 178
            height: 28
            TextField {
                id: numberBbox
                validator: DoubleValidator{bottom: 0; decimals: 1000; top: 9999;}
                anchors.fill: parent
                anchors.margins: 4
                horizontalAlignment: Text.AlignHLeft
                verticalAlignment: Text.AlignVCenter
                selectByMouse: true
                placeholderText: "Task..."
                focus: true

            }
        }

        RowLayout {
            id: rowLayout2
            x: 84
            y: 109
            width: 178
            height: 28
            TextField {
                id: numberCbox
                validator: DoubleValidator{bottom: 0; decimals: 1000; top: 9999;}
                anchors.fill: parent
                anchors.margins: 4
                horizontalAlignment: Text.AlignHLeft
                verticalAlignment: Text.AlignVCenter
                selectByMouse: true
                placeholderText: "Task..."
                focus: true

            }
        }

        RowLayout {
            id: rowLayout3
            x: 84
            y: 148
            width: 178
            height: 28
            Button {
                text: "Count triangle's square"
                id:addtaskButton
                Layout.fillWidth: true
                Layout.fillHeight: true
                KeyNavigation.tab: searchBox
                onClicked: {
                    countSquare.geronsSquare(numberAbox.text, numberBbox.text, numberCbox.text)
                }
            }
        }

        Text {
            id: text5
            x: 303
            y: 91
            width: 57
            height: 21
            text: qsTr("Result:")
            font.pixelSize: 12
        }

        Text {
            id: resultText
            x: 354
            y: 91
            width: 103
            height: 18
            font.pixelSize: 12
            text: countSquare.square
        }

        RowLayout {
            id: rowLayout4
            x: 64
            y: 226
            width: 178
            height: 28
            TextField {
                id: x1box
                anchors.fill: parent
                anchors.margins: 4
                horizontalAlignment: Text.AlignHLeft
                verticalAlignment: Text.AlignVCenter
                selectByMouse: true
                placeholderText: "Task..."
                focus: true
                validator: DoubleValidator {
                    bottom: 0
                    decimals: 1000
                    top: 9999
                }
            }
        }

        RowLayout {
            id: rowLayout5
            x: 64
            y: 294
            width: 178
            height: 28
            TextField {
                id: x3box
                anchors.fill: parent
                anchors.margins: 4
                horizontalAlignment: Text.AlignHLeft
                verticalAlignment: Text.AlignVCenter
                selectByMouse: true
                placeholderText: "Task..."
                focus: true
                validator: DoubleValidator {
                    bottom: 0
                    decimals: 1000
                    top: 9999
                }
            }
        }

        RowLayout {
            id: rowLayout6
            x: 64
            y: 260
            width: 178
            height: 28
            TextField {
                id: x2box
                anchors.fill: parent
                anchors.margins: 4
                horizontalAlignment: Text.AlignHLeft
                verticalAlignment: Text.AlignVCenter
                selectByMouse: true
                placeholderText: "Task..."
                focus: true
                validator: DoubleValidator {
                    bottom: 0
                    decimals: 1000
                    top: 9999
                }
            }
        }

        RowLayout {
            id: rowLayout7
            x: 279
            y: 226
            width: 178
            height: 28
            TextField {
                id: y1box
                anchors.fill: parent
                anchors.margins: 4
                horizontalAlignment: Text.AlignHLeft
                verticalAlignment: Text.AlignVCenter
                selectByMouse: true
                placeholderText: "Task..."
                focus: true
                validator: DoubleValidator {
                    bottom: 0
                    decimals: 1000
                    top: 9999
                }
            }
        }

        RowLayout {
            id: rowLayout8
            x: 279
            y: 294
            width: 178
            height: 28
            TextField {
                id: y3box
                anchors.fill: parent
                anchors.margins: 4
                horizontalAlignment: Text.AlignHLeft
                verticalAlignment: Text.AlignVCenter
                selectByMouse: true
                placeholderText: "Task..."
                focus: true
                validator: DoubleValidator {
                    bottom: 0
                    decimals: 1000
                    top: 9999
                }
            }
        }

        RowLayout {
            id: rowLayout9
            x: 279
            y: 260
            width: 178
            height: 28
            TextField {
                id: y2box
                anchors.fill: parent
                anchors.margins: 4
                horizontalAlignment: Text.AlignHLeft
                verticalAlignment: Text.AlignVCenter
                selectByMouse: true
                placeholderText: "Task..."
                focus: true
                validator: DoubleValidator {
                    bottom: 0
                    decimals: 1000
                    top: 9999
                }
            }
        }

        Text {
            id: text6
            x: 39
            y: 232
            width: 15
            height: 17
            text: qsTr("x1")
            font.pixelSize: 12
        }

        Text {
            id: text7
            x: 39
            y: 266
            width: 15
            height: 17
            text: qsTr("x2")
            font.pixelSize: 12
        }

        Text {
            id: text8
            x: 39
            y: 300
            width: 15
            height: 17
            text: qsTr("x3")
            font.pixelSize: 12
        }

        Text {
            id: text9
            x: 258
            y: 232
            width: 15
            height: 17
            text: qsTr("y1")
            font.pixelSize: 12
        }

        Text {
            id: text10
            x: 258
            y: 266
            width: 15
            height: 17
            text: qsTr("y2")
            font.pixelSize: 12
        }

        Text {
            id: text11
            x: 258
            y: 300
            width: 15
            height: 17
            text: qsTr("x1")
            font.pixelSize: 12
        }

        RowLayout {
            id: rowLayout10
            x: 149
            y: 350
            width: 178
            height: 28
            Button {
                id: countpeakButton
                text: "Count triangle's square"
                onClicked: {
                            countSquare.peaksSquare(x1box.text, x2box.text, x3box.text, y1box.text, y2box.text, y3box.text)
                        }
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
}

