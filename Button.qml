import QtQuick 2.0


//new changes
=======
//testing branch

=======
//testing github



Rectangle {
    id:root
    property alias text:number.text
    signal clicked

    width:116;height:26
    color:"lightsteelblue"
    border.color: "slategrey"


    Text{
        id:number
        anchors.centerIn:parent
        text:""

    }
    MouseArea{
        anchors.fill:parent
        onClicked: {
            root.clicked()
        }
    }

}
