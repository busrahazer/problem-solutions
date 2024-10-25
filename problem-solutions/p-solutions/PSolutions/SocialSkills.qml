import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 750
    height: 1000

    Column {
        spacing: 20
        anchors.top: parent.top

        Button {
            text: "Social Skills Button Deneme"
            font.pixelSize: 15
            width: 150
            height: 40
            background: Rectangle {
                color: "#f8c0ce"
                radius: 10
                border.color: "#FFFFFF"
            }
            onClicked: {
                SocialSkillsObject.setMessage("Social Skills Sayfası")
            }
        }

        Text {
            id: messageText
            text: SocialSkillsObject.message
            font.pixelSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
