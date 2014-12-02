import QtQuick 2.3
import QtQuick.Controls 1.2

ApplicationWindow {
    id: about
    width: 400
    height: 100
    title: About

    Text {
        text: "QtCue is a live show controller by Joseph Borg\n http://josephb.org"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
