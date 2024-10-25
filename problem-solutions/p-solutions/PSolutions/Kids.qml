import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: kidsPageItem

    Column {
        spacing: 20
        anchors.centerIn: parent

        Button {
            text: "Paylaşma"
            onClicked: {
                sharingPageLoader.item.visible = true
            }
        }

        Loader {
            id: sharingPageLoader
            source: "SharingPage.qml"
            onLoaded: {
                console.log("SharingPage yüklendi.")
                // sharingPageLoader.item.visible = false // Başlangıçta görünmesin
            }
            onStatusChanged: {
                if (sharingPageLoader.status === Loader.Error) {
                    console.log("SharingPage yükleme hatası: " + sharingPageLoader.status)
                }
            }
        }
    }
}
