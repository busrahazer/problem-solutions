import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 750
    height: 1000

    Column {
        spacing: 20
        anchors.top: parent.top

        Button {
            text: "Professional Button Deneme"
            font.pixelSize: 15
            width: 150
            height: 40
            background: Rectangle {
                color: "#f8c0ce"
                radius: 10
                border.color: "#FFFFFF"
            }
            onClicked: {
                ProfessionalObject.setMessage("Professional Sayfası")
            }
        }

        Text {
            id: messageText
            text: ProfessionalObject.message
            font.pixelSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
