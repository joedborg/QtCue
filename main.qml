import QtQuick 2.3
import QtQuick.Controls 1.2

ApplicationWindow {
    id: main
    visible: true
    width: 640
    height: 480
    title: qsTr("QtCue")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
        Menu {
            title: qsTr("Help")
            MenuItem {
                text: qsTr("&About")
                onTriggered: {
                    var about = Qt.createComponent("about.qml")
                    var window = about.createObject(main)
                    window.show()
                }
            }
        }
    }
    Row {
        spacing: 2
        Column {
            Button {
                id: goButton
                text: "Go!"
                width: main.width * 0.2
            }
        }
        Column {
            Slider {
                id: trackSlider
                width: main.width * 0.8
            }
        }
    }
    Row {
        Column {
            TableView {
                width: main.width * 1.0
            }
        }
    }
}
