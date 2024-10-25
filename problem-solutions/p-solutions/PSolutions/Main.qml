import QtQuick.Controls 2.15
import QtQuick 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 950
    height: 1000
    title: "P Solutions"

    // Sabit bir sol kenar layoutu (butonları içeriyor)
    Rectangle {
        id: sideMenu
        width: 200
        height: parent.height
        color: "#e8e7e5"

        Column {
            anchors.fill: parent
            spacing: 0

            Button {
                text: "Ana Menü"
                width: parent.width
                height: 40
                font.pixelSize: 15
                background: Rectangle {
                    color: "#ff9933"  // Turuncu tonu
                    radius: 0
                }
                onClicked: pageLoader.sourceComponent = mainPage
            }

            Button {
                text: "Profesyonellik"
                width: parent.width
                height: 40
                font.pixelSize: 15
                background: Rectangle {
                    color: "#f8e16f"
                    radius: 0
                }
                onClicked: pageLoader.sourceComponent = professionalPage
            }

            Button {
                text: "Eğitim"
                width: parent.width
                height: 40
                font.pixelSize: 15
                background: Rectangle {
                    color: "#369acc"
                    radius: 0
                }
                onClicked: pageLoader.sourceComponent = educationPage
            }

            Button {
                text: "Sosyal Beceriler"
                width: parent.width
                height: 40
                font.pixelSize: 15
                background: Rectangle {
                    color: "pink"
                    radius: 0
                }
                onClicked: pageLoader.sourceComponent = socialSkillsPage
            }

            Button {
                text: "Çocuklar İçin"
                width: parent.width
                height: 40
                font.pixelSize: 15
                background: Rectangle {
                    color: "#6ec756"
                    radius: 0
                }
                onClicked: pageLoader.sourceComponent = kidsPage
            }
        }
    }

    // Değişken içerik (sayfa içeriği burada yüklenecek)
    Loader {
        id: pageLoader
        anchors.fill: parent
        anchors.leftMargin: sideMenu.width // Sabit layout genişliği kadar boşluk bırakır
        sourceComponent: mainPage // İlk olarak ana sayfa yüklenecek
    }

    // Ana sayfa Component (varsayılan olarak ilk yüklenecek sayfa)
    Component {
        id: mainPage
        Column {
            spacing: 20
            anchors.centerIn: parent

            Text {
                text: "USAGE"
                color: "#369acc"
                font.pixelSize: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                text: "- Bu uygulama yapay zeka tarafından sizi belirli konularla ilgili senaryolara tabi tutmak için yapılmıştır."
                font.pixelSize: 14
            }

            Text {
                text: "- Uygulama ile seçtiğiniz bir konudaki belli başlıklar göreceksiniz."
                font.pixelSize: 14
            }

            Text {
                text: "- Şimdilik yalnızca Kids kısmı aktif olsa da,\n yakın zamanda diğer kısımlar da kullanılabilecektir."
                font.pixelSize: 14
            }

            Text {
                text: qsTr("- Kids kısmına basarak uygulamayı kullanmaya başlayın!")
                font.pixelSize: 14
            }
        }
    }

    // Profesyonellik sayfası component
    Component {
        id: professionalPage
        Professional {
        }
    }

    // Eğitim sayfası component
    Component {
        id: educationPage
        Education {
        }
    }

    // Sosyal Beceriler sayfası component
    Component {
        id: socialSkillsPage
        SocialSkills {
        }
    }

    // Kids sayfası component
    Component {
        id: kidsPage
        Kids {
        }
    }
}
