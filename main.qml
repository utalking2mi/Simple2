import QtQuick 2.9
import QtQuick.Controls 2.4

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    color: "transparent"
    property alias mouseArea: mouseArea
    title: qsTr("Scroll")
    signal menuClicked(string str)
   // property alias textEdit: emailEdit
   // property alias textEdit: messageEdit

    MouseArea {
        id: mouseArea
        anchors.rightMargin: -67
        anchors.bottomMargin: 0
        anchors.leftMargin: 67
        anchors.topMargin: 0
        anchors.fill: parent

        Button {
            id: button
            x: 217
            y: 345
            text: qsTr("Send")
        }
    }

    TextEdit {
        id: emailEdit
        text: qsTr("Email address:")
        anchors.horizontalCenterOffset: -195
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Rectangle {
            anchors.fill: parent
            anchors.margins: -10
            color: "transparent"
            anchors.rightMargin: -20
            anchors.bottomMargin: -46
            anchors.leftMargin: 0
            anchors.topMargin: 26
            border.width: 1
        }
    }

    TextEdit {
        id: messageEdit
        y: 105
        text: qsTr("Message:")
        anchors.horizontalCenterOffset: -210
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Rectangle {
            anchors.fill: parent
            anchors.margins: -10
            color: "transparent"
            anchors.rightMargin: -185
            anchors.bottomMargin: -157
            anchors.leftMargin: 0
            anchors.topMargin: 25
            border.width: 1
        }
    }
}



