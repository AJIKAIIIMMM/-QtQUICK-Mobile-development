import QtQuick 2.12
import QtQuick.Window 2.12
import "JS.js" as MyFirstScript
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Component.onCompleted: {
        MyFirstScript.YesIAmAnObject.prototype.isOk = function() { return false }
        var obj = new MyFirstScript.YesIAmAnObject(1, 2)
        print(obj.isOk())
    }
}
