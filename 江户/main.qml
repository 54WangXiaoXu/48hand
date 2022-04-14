import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Window {
    id: window
    width: 400
    height: 750
    visible: true
    title: qsTr("Hello Andriod")


    Display{
        id:display
        width: 400
        height: 600
        z: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

    }


    Swipe{
        id:swipe
        width: 400
        height: 150
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

    }
    Component.onCompleted: {
        swipe.swipSignal.connect(display.receiveInfo)
    }

}

/*##^##
Designer {
    D{i:1;anchors_width:500}D{i:2;anchors_height:200;anchors_width:200;anchors_x:77;anchors_y:50}
}
##^##*/
