import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        id: container
        anchors.fill: parent

        Rectangle {
            id: rect
            width: 50; height: 50
            color: "green"
//            RotationAnimation on rotation {
//                    loops: Animation.Infinite
//                    from: 0
//                    to: 360
//                }
            states: State {
                        name: "rotated"
                        PropertyChanges { target: rect; rotation: 180; transformOrigin: Item.BottomRight }
                    }

                    transitions: Transition {
                        SequentialAnimation {
                                PropertyAction { target: rect; property: "transformOrigin" }
                                RotationAnimation {
                                    loops: Animation.Infinite
                                    from: 0
                                    to: 360
                                }
                            }
                    }
            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                drag.target: rect
                drag.axis: Drag.XAxisYAxis
                drag.minimumX: 0
                drag.maximumX: container.width - rect.width


                onClicked:
                    if (mouse.button == Qt.RightButton)
                        rect.state = "rotated"
                    else
                        { parent.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1); }
                onDoubleClicked:
                    if (parent.radius == 0)
                        { parent.radius = (width / 2); }
                    else
                        { parent.radius = 0; }
            }
        }
    }
}
