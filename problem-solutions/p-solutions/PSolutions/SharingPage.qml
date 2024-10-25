import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: sharingPageItem
    visible: false  // Varsayılan olarak görünmez

    Column {
        spacing: 20
        anchors.centerIn: parent

        TextField {
            id: userName
            placeholderText: "Adınızı girin"
        }

        Row {
            spacing: 5
            SpinBox {
                id: userAge
                from: 5
                to: 12
                value: 8
            }
            Text {
                text: "yaş"
            }
        }

        ComboBox {
            id: userGender
            model: ["Kız", "Erkek"]
        }

        Label {
            text: "1) Arkadaşlarımla sık sık eşyalarımı paylaşırım."
        }
        ComboBox {
            id: question1
            model: ["Evet", "Bazen", "Hayır"]
        }

        Label {
            text: "2) Ailemle sık sık eşyalarımı paylaşırım."
        }
        ComboBox {
            id: question2
            model: ["Evet", "Bazen", "Hayır"]
        }

        Label {
            text: "3) Herkesin eşyalarını paylaşması gerektiğini düşünürüm."
        }
        ComboBox {
            id: question3
            model: ["Evet", "Bazen", "Hayır"]
        }

        Button {
            text: "Senaryoyu oluştur"
            onClicked: {
                console.log("Senaryoyu oluştur butonuna tıklandı")
                console.log("Ad: " + userName.text)
                console.log("Yaş: " + userAge.value)
                console.log("Cinsiyet: " + userGender.currentText)
                console.log("Soru 1: " + question1.currentText)
                console.log("Soru 2: " + question2.currentText)
                console.log("Soru 3: " + question3.currentText)
            }
        }
    }
}
