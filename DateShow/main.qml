import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import Randomnum 1.0

ApplicationWindow {
    visible: true
    width: 1024
    height: 600
    color: "black"
    title: qsTr("Metronome")
    property int ye: 2033
    property int mo: 10
    property int da: 31
//    Image {
//        id: set_fixtime_year
//        x:90
//        y:100
//        width: 201
//        height: 103
//        source:
//            if( 1 == year_ope )
//            {
//                "qrc:/setting_Icon_time_year_SEL.png"
//            }
//            else if( 2 == year_ope )
//            {
//                "qrc:/setting_Icon_time_mon_day_cursor.png"
//            }
//            else if( 3 == year_ope )
//            {
//                "qrc:/setting_Icon_time_mon_day_ON.png"
//            }
//            else
//            {
//                ""
//            }
//    }

//    Image {
//        id: set_fixtime_month
//        x: 270
//        y:100
//        width: 151
//        height: 103
//        source:
//            if( 1 == mon_ope )
//            {
//                "qrc:/setting_Icon_time_year_SEL.png"
//            }
//            else if( 2 == mon_ope )
//            {
//                "qrc:/setting_Icon_time_year_cursor.png"
//            }
//            else if( 3 == mon_ope )
//            {
//                "qrc:/setting_Icon_time_mon_day_ON.png"
//            }
//            else
//            {
//                ""
//            }
//    }

//    Image {
//        id: set_fixtime_day
//        x:420
//        y:100
//        width: 151
//        height: 103
//        source:
//            if( 1 == day_ope )
//            {
//                "qrc:/setting_Icon_time_mon_day_SEL.png"
//            }
//            else if( 2 == day_ope )
//            {
//                "qrc:/setting_Icon_time_mon_day_cursor.png"
//            }
//            else if( 3 == day_ope )
//            {
//                "qrc:/setting_Icon_time_mon_day_ON.png"
//            }
//            else
//            {
//                ""
//            }
//    }
    property date setdateDate: ye.toString()+"-"+mo.toString()+
                               "-"+da.toString()/*new Date()*/

    property int year_ope:-1
    property int mon_ope:-1
    property int day_ope:-1

    onYear_opeChanged: {
        if (year_ope == 1){
            mon_ope = 0
            day_ope = 0
            listviewYear.interactive = true
        } else if (year_ope > 0){
            mon_ope = 0
            day_ope = 0
            listviewYear.interactive = false
        } else {
            listviewYear.interactive = false
        }
    }

    onMon_opeChanged: {
        if(mon_ope == 1){
            year_ope = 0
            day_ope = 0
            listviewMonth.interactive = true
        } else if(mon_ope > 0){
            year_ope = 0
            day_ope = 0
            listviewMonth.interactive = false
        } else {
            listviewMonth.interactive = false
        }
    }

    onDay_opeChanged: {
        if(day_ope == 1){
            year_ope = 0
            mon_ope = 0
            listviewDay.interactive = true
        } else if (day_ope > 0){
            year_ope = 0
            mon_ope = 0
            listviewDay.interactive = false
        } else {
            listviewDay.interactive = false
        }
    }

    Item {
        id: timeShow
        visible: false

            Image {
                id: set_fixtime_year
                x:90
                y:100
                width: 201
                height: 103
                source:
                    if( 1 == year_ope )
                    {
                        "qrc:/setting_Icon_time_year_SEL.png"
                    }
                    else if( 2 == year_ope )
                    {
                        "qrc:/setting_Icon_time_mon_day_cursor.png"
                    }
                    else if( 3 == year_ope )
                    {
                        "qrc:/setting_Icon_time_mon_day_ON.png"
                    }
                    else
                    {
                        ""
                    }
            }

            Image {
                id: set_fixtime_month
                x: 270
                y:100
                width: 151
                height: 103
                source:
                    if( 1 == mon_ope )
                    {
                        "qrc:/setting_Icon_time_year_SEL.png"
                    }
                    else if( 2 == mon_ope )
                    {
                        "qrc:/setting_Icon_time_year_cursor.png"
                    }
                    else if( 3 == mon_ope )
                    {
                        "qrc:/setting_Icon_time_mon_day_ON.png"
                    }
                    else
                    {
                        ""
                    }
            }

            Image {
                id: set_fixtime_day
                x:420
                y:100
                width: 151
                height: 103
                source:
                    if( 1 == day_ope )
                    {
                        "qrc:/setting_Icon_time_mon_day_SEL.png"
                    }
                    else if( 2 == day_ope )
                    {
                        "qrc:/setting_Icon_time_mon_day_cursor.png"
                    }
                    else if( 3 == day_ope )
                    {
                        "qrc:/setting_Icon_time_mon_day_ON.png"
                    }
                    else
                    {
                        ""
                    }
            }

        Text {
            id: ico_year
            x:275
            y:115
            width: 10
            height: 10
            font.pointSize: 30
            font.bold: false //zhangwenbin change 0306
            color: "white"
            text: qsTr("-")
        }

        Text {
            id: ico_month
            x:410
            y:115
            width: 10
            height: 10
            font.pointSize: 30
            font.bold: false //zhangwenbin change 0306
            color: "white"
            text: qsTr("-")
        }

        Rectangle {
            x: 140
            y: 32
            z: 1
            width: 120
            height: 270
            color: "transparent"
            ListView {
                id: listviewYear
                anchors.fill: parent
                interactive: false
                clip: true
                snapMode: ListView.SnapOneItem
                highlightMoveDuration:1
                highlightRangeMode: ListView.StrictlyEnforceRange
                boundsBehavior:Flickable.StopAtBounds
                Component {
                    id: delegateYear
                    Item{
                        x: (index == listviewYear.currentIndex + 1) ? 0:10
                        height: 90
                        width: 120
                        Text {
                            text: textYear
                            color: (index == 0 || (!listviewYear.interactive && index != listviewYear.currentIndex + 1))?"black":((index == listviewYear.currentIndex + 1) ? "white":"gray")
                            font.pixelSize: (index == listviewYear.currentIndex + 1) ?48:36
                        }
                        MouseArea {
                            enabled: index == listviewYear.currentIndex + 1
                            anchors.fill: parent
                            onPressed: {
                                if (!listviewYear.interactive) {
                                    year_ope = 3
                                }
                            }
                            onReleased: {
                                year_ope = 1
                            }
                        }
                    }
                }
                model: listmodeYear
                delegate: delegateYear
                onCurrentIndexChanged: {
                    totalDaychange();
//                    cppCtrl.mainQmllog(_FILE_,387, "listviewYear.count",listviewYear.count);
                }
                onContentYChanged: {
//                    cppCtrl.mainQmllog(_FILE_,387, "listviewYear.contentY",listviewYear.contentY);
                    console.log("listviewYear.contentY",listviewYear.contentY)
                    console.log("listviewYear.count",listviewYear.count)
                    if (listviewYear.contentY > (listviewYear.count -2) * 90) {
                        listviewYear.interactive = false
                        listviewYear.contentY = (listviewYear.count -2) * 90
                        listviewYear.interactive = true
                    }
                }
            }
            ListModel {
                id: listmodeYear
            }
        }

        Rectangle {
            x: 250
            y: 5
            width: 120
            height: 280
            color: "transparent"
            PathView {
                id: listviewMonth
                anchors.fill: parent
                interactive: false
                clip: true
                visible: true /*PathView.onPath*/
                snapMode: PathView.SnapOneItem
                highlightRangeMode: PathView.StrictlyEnforceRange
                Component {
                    id: delegateMonth
                    Item {
                        height: 90
                        width: 120
                        Text {
                            anchors.centerIn: parent
                            text: textMonth > 9 ? textMonth : "0"+textMonth
                            color: (!listviewMonth.interactive && index != listviewMonth.currentIndex)?"black":((index == listviewMonth.currentIndex) ? "white":"gray")
                            font.pixelSize: (index == listviewMonth.currentIndex) ?48:36
                        }
                        MouseArea {
                            enabled: index == listviewMonth.currentIndex
                            anchors.fill: parent
                            onPressed: {
                                if (!listviewMonth.interactive) {
                                    mon_ope = 3
                                }
                            }
                            onReleased: {
                                mon_ope = 1
                            }
                        }
                    }
                }
                model: listmodeMonth
                delegate: delegateMonth
                path: Path {
                    startX: 97; startY: 150
                    PathLine{x: 97; y: 350}
                    PathLine{x: 300; y: 350}
                    PathLine{x: 300; y: -50}
                    PathLine{x: 97; y: -50}
                    PathLine{x: 97; y: 150}
                }
                onCurrentIndexChanged: {
                    totalDaychange();
                }
            }
            ListModel {
                id: listmodeMonth
            }
        }

        Rectangle {
            x: 400
            y: 5
            width: 120
            height: 280
            color: "transparent"
            PathView {
                id: listviewDay
                anchors.fill: parent
                interactive: false
                clip: true
                snapMode: PathView.SnapOneItem
                highlightRangeMode: PathView.StrictlyEnforceRange
                Component {
                    id: delegateDay
                    Item {
                        height: 90
                        width: 120
                        Text {
                            anchors.centerIn: parent
                            text: textDay > 9 ? textDay : "0" + textDay
                            color: (!listviewDay.interactive && index != listviewDay.currentIndex)?"black":((index == listviewDay.currentIndex) ? "white":"gray")
                            font.pixelSize: (index == listviewDay.currentIndex) ?48:36

                        }
                        MouseArea {
                            enabled: index == listviewDay.currentIndex
                            anchors.fill: parent
                            onPressed: {
                                if (!listviewDay.interactive){
                                    day_ope = 3
                                }
                            }
                            onReleased: {
                                day_ope = 1
                            }
                        }

                    }
                }
                model: listmodeDay
                delegate: delegateDay
                path: Path {
                    startX: 95; startY: 150
                    PathLine{x: 95; y: 580}
                    PathLine{x: 600; y: 580}
                    PathLine{x: 600; y: -450}
                    PathLine{x: 95; y: -450}
                    PathLine{x: 95; y: 150}
                }
            }
            ListModel {
                id: listmodeDay
            }
        }

        Timer {
            id: initTimer
            running: true
            interval: 0
            onTriggered: {
                var dateNow = new Date();
                for (var i = dateNow.getFullYear() - 1;i < dateNow.getFullYear() + 20;i++){
                    listmodeYear.append({"textYear":i});
                }
                if (setdateDate.getFullYear() > dateNow.getFullYear()){
                    listviewYear.currentIndex = setdateDate.getFullYear() - dateNow.getFullYear()
                }

                for (var j = 1;j < 13;j++){
                    listmodeMonth.append({"textMonth":j});
                }
                listviewMonth.currentIndex = setdateDate.getMonth();

                var  dayTmp = new Date(setdateDate.getFullYear(),setdateDate.getMonth(),0);
                var daycount = dayTmp.getDate();
                for (var k = 1;k < daycount + 1;k++){
                    listmodeDay.append({"textDay":k});
                }
                listviewDay.currentIndex = setdateDate.getDate() -1;
            }
        }
    }
    Component.onCompleted: {
        totalDaychange()
    }

    Timer {
        interval: 300
        running: true
        onTriggered: {
            timeShow.visible = true
            cppCtrl.mainQmllog(_FILE_,387, "listviewYear.currentIndex",listviewYear.currentIndex);
            cppCtrl.mainQmllog(_FILE_,387, "listviewMonth.currentIndex",listviewMonth.currentIndex);
            cppCtrl.mainQmllog(_FILE_,387, "listviewDay.currentIndex",listviewMonth.currentIndex);
            cppCtrl.mainQmllog(_FILE_,387, "setdateDate.getFullYear()",setdateDate.getFullYear());
            cppCtrl.mainQmllog(_FILE_,387, "setdateDate.getMonth()",setdateDate.getMonth());
            cppCtrl.mainQmllog(_FILE_,387, "setdateDate.getDate() ",setdateDate.getDate());
        }
    }

    function resetDateShow(setyearInit,setmonthInit,setdayInit)
    {
        var dateNow = new Date();
        if (setyearInit > dateNow.getFullYear()){
            listviewYear.currentIndex = setyearInit - dateNow.getFullYear()
        }
        listviewMonth.currentIndex = setmonthInit - 1;
        if (listviewDay.count > setdayInit)
        {
            listviewDay.currentIndex = setdayInit -1;
        } else {
            listviewDay.currentIndex = listviewDay.count -1;
        }
        year_ope = 0
        mon_ope = 0
        day_ope = 0
    }

    function totalDaychange()
    {
        var  dayTmp = new Date(listmodeYear.get(listviewYear.currentIndex + 1).textYear,listmodeMonth.get(listviewMonth.currentIndex).textMonth,0);
        var daycount = dayTmp.getDate();
        var dayIndexTmp = listviewYear.currentIndex;
        for (var i=listmodeDay.count ; i > daycount;i--){
            listmodeDay.remove(i -1);
        }
        for (var j=listmodeDay.count ; j < daycount;j++){
            listmodeDay.append({"textDay":j+1});
        }
    }
}
