import QtQuick 2.4
import "./function/RandomNum.js" as RandomNum

SwipeForm {
    signal swipSignal(var count)

    button3.onClicked: {
            text3.text = "声明：本程序只可用来学习!!\n不可传播!!\n否则后果自行承担！！！"
    }
    property var count: 0
    button2.onClicked: {
        console.log("发送信号")
        if(0 === count){
            swipSignal(1)
            count++
            button2.text = "隐藏"
        }
        else{
            swipSignal(0)
            count = 0
            button2.text = "显示"
        }


}

    button1.onClicked: {
        var num = RandomNum.func(47)
        while(num > 7){
            num = RandomNum.func(47)
        }
        element3.text = num
        swipSignal(num + 2000) //发送按键2的随机数
        //console.log("随机数：",num)
}
    button.onClicked: {

         var num = RandomNum.func(47)
        while(num>= 0 && num <= 7){
            num = RandomNum.func(47)
        }

         element2.text = num
         swipSignal(num + 1000) //发送按键1的随机数
        // console.log("随机数：",num)
}
}
