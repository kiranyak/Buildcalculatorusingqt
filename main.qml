import QtQuick 2.12
import QtQuick.Window 2.12
import "hard.js" as Logic


Window {
    visible: true
    width: 400
    height: 500
    title: qsTr("Hello World")


    Rectangle{
        id:display
        x:0
        y:rect.height

        width:parent.width
        height:50
        color:"orange"
        Text{
            id:displaytext
            anchors.centerIn: parent
            text:"0.0"
        }

        MouseArea{
            id:displaymouse
            anchors.fill: parent

        }
    }


    Rectangle{
        id:rect
        width:50
        height:50
        color:"blue"
        Text{
            anchors.centerIn: parent
            text:"2"
        }

        MouseArea{
            id:mousearea
            anchors.fill: parent
            onClicked: Logic.add(2)

        }
    }

    Rectangle{
        id:rect2
        x:50
        y:0
        width:50
        height:50
        color:"grey"
        Text{
            anchors.centerIn: parent
            text:"4"
        }

        MouseArea{
            id:mousearea2
            anchors.fill: parent
            onClicked: {
                Logic.add(4)
            }

        }
    }
    Rectangle{
        id:rect8
        x:250
        y:0
        width:50
        height:50
        color:"grey"
        Text{
            anchors.centerIn: parent
            text:"8"
        }

        MouseArea{
            id:mousearea8
            anchors.fill: parent
            onClicked: {
                Logic.add(8)
            }

        }
    }


    Rectangle{
        id:rect3
        width:50
        height:50
        x:100
        y:0
        color:"red"
        Text{
            id:texti
            anchors.centerIn: parent
            text:"="
        }

        MouseArea{
            id:mousearea3
            anchors.fill: parent
            onClicked: {
                displaytext.text=Logic.operation(Logic.before,Logic.after)
                console.log("before: "+  Logic.before)
                console.log("after: "+ Logic.after)
                console.log(Logic.operation(Logic.before,Logic.after))

                //console.log(Logic.result)

            }

        }
    }


    Rectangle{
        id:rect4
        width:50
        height:50
        x:150
        y:0
        color:"purple"
        Text{
            anchors.centerIn: parent
            text:"+"
        }


        MouseArea{
            id:mousearea4
            anchors.fill: parent
            onClicked: {
                Logic.status=false;
                Logic.id="+";
                console.log(Logic.status)

            }
        }
        Rectangle{
            id:rect5
            width:50
            height:50
            x:200
            y:0
            color:"blue"
            Text{
                anchors.centerIn: parent
                text:"*"
            }
           MouseArea{
                id:mousearea5
                anchors.fill: parent
                onClicked: {
                    Logic.status=false;
                    Logic.id="*";
                    console.log(Logic.status)

                }
            }
    }

}
}
