import QtQuick 2.4
import QtQuick.Controls 2.5

Item {
    width: 400
    height: 150
    property alias text3: text3
    property alias button3: button3
    property alias button2: button2
    property alias element3: element3
    property alias element2: element2
    property alias button1: button1
    property alias button: button

    SwipeView {
        id: view

        anchors.fill: parent

        currentIndex: 0

        Item {
            id: firstPage
            Rectangle {
                color: "#322f2f"
                anchors.fill: parent

                RoundButton {
                    id: button
                    x: 271
                    y: 102
                    width: 80
                    height: 40
                    text: qsTr("随机")

                    layer.format: ShaderEffectSource.RGBA
                    focusPolicy: Qt.ClickFocus
                    autoRepeat: false
                    font.pointSize: 20
                    highlighted: false
                    font.bold: true
                }

                Text {
                    id: element
                    x: 31
                    y: 19
                    width: 224
                    height: 43
                    color: "white"
                    text: qsTr("在常规图片中挑选")
                    font.bold: true
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 25
                }

                Text {
                    id: element2
                    x: 202
                    y: 102
                    width: 53
                    height: 40
                    color: "#f9f9f9"
                    text: qsTr("数值")
                    font.bold: true
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 20
                }

                RoundButton {
                    id: button2
                    x: 271
                    y: 45
                    width: 80
                    height: 40
                    text: qsTr("显示")
                    font.bold: true
                    autoRepeat: false
                    focusPolicy: Qt.ClickFocus
                    highlighted: false
                    layer.format: ShaderEffectSource.RGBA
                    font.pointSize: 20
                }
            }
        }
        Item {
            id: secondPage
            visible: true
            Rectangle {
                color: "green"
                anchors.fill: parent

                RoundButton {
                    id: button1
                    x: 271
                    y: 103
                    width: 80
                    height: 40
                    text: qsTr("随机")

                    layer.format: ShaderEffectSource.RGBA
                    focusPolicy: Qt.ClickFocus
                    autoRepeat: false
                    font.pointSize: 20
                    highlighted: false
                    font.bold: true
                }

                Text {
                    id: element1
                    x: 31
                    y: 19
                    width: 224
                    height: 43
                    color: "white"
                    text: qsTr("在部分图片中挑选")
                    font.bold: true
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 25
                }

                Text {
                    id: element3
                    x: 202
                    y: 103
                    width: 53
                    height: 40
                    color: "#f9f9f9"
                    text: qsTr("数值")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: 20
                    font.bold: true
                }
            }
        }
        Item {
            id: thirdPage
            Rectangle {
                color: "pink"
                anchors.fill: parent
                Text {
                    id: text3
                    anchors.fill: parent
                    text: qsTr("待开发")
                    font.pixelSize: 30
                    font.bold: true
                    color: "red"
                }

                RoundButton {
                    id: button3
                    x: 271
                    y: 102
                    width: 80
                    height: 40
                    text: qsTr("声明")

                    layer.format: ShaderEffectSource.RGBA
                    focusPolicy: Qt.ClickFocus
                    autoRepeat: false
                    font.pointSize: 20
                    highlighted: false
                    font.bold: true

                }
            }
        }
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
