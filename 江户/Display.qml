import QtQuick 2.0
import QtQuick.Controls 2.5

Item {
    id: element

    property var imageNum: 48
    function receiveInfo(count){
            console.log("接收的数据:",count)
            if(1 === count){
                startimage.visible = false
            }
            else if(0 === count){
                startimage.visible = true
            }
            if(count >= 1000 && count < 2000){
                //按键1的随机数、分离
                console.log("按键1：", count - 1000)
                //跳转到指定位置
                listView.currentIndex = (count - 1000)
                listView.contentY = (count - 1000)*400
            }
            if(count >= 2000){
                //按键1的随机数、分离
                console.log("按键2：", count - 2000)
                listView.contentY = (count - 2000)*400

            }
        }

    property var urlID: []
    width: 400  //图片的各个地址

    function urlFun(){
        console.log("调用了")
        for(var i = 0; i < imageNum; i++){
            urlID[i] = "qrc:/image/%1.gif".arg(i)
        }
    }


    Rectangle {
        id: background
        color: "black"
        anchors.fill: parent

        //界面开始图片
        Image {
            id: startimage
            width: 400
            height: 700
            z:2
            source: "qrc:/image/start.jpeg"
        }

        ListView {

            id: listView
            anchors.fill: parent
            layoutDirection: Qt.LeftToRight
            model: imageNum
            spacing: 2
            orientation: ListView.Vertical
            highlightRangeMode: ListView.StrictlyEnforceRange


            Text {
                visible: false
                Component.onCompleted: {
                    urlFun()
                }
            }

            delegate: Rectangle {

                width: 400
                height: 400

                color: ListView.isCurrentItem?"#515151":'black' //选中颜色设置

                //git图显示部分
                Rectangle{

                    id: animaimagerectangle
                    visible: true


                    AnimatedImage{
                        id: animatedimage
                        width: 400
                        height: 400
                        source: "qrc:/image/%1.gif".arg(index)
                        Text {
                            text: qsTr(index.toString())
                            font.pixelSize: 25
                            font.bold: true
                            color: "red"
                        }
                    }


                //文字信息
                    Rectangle{
                        id: textrectangle
                        width: 400
                        height: 400
                        color: "black"
                        visible: false
                        Text {
                            id: imagetext
                            width: 400
                            height: 400
                            color: "white"
                            font.pixelSize: 35
                            font.bold: true
                            text: qsTr("这是一段测试的话")
                            wrapMode: Text.WrapAnywhere
                        }
                    }
                }

                //鼠标点击部分
                property var clickCount: 0

                property var imageDescription: []  //

                MouseArea {

                    width: 400
                    height: 400

                    onClicked: {
                        listView.currentIndex = index  //实现item切换
                        console.log(index)
                        console.log("打开对应的")
                        if(clickCount === 0){
                            clickCount++
                            textrectangle.visible = true


                            imageDescription[0] = "男上女下的69姿势，双方卧在床上，头向相反生向，男生将双脚放于女生头后，女生此时可替男生手淫或口交，本姿势是发挥口技的绝佳体位。"
                            imageDescription[1] = "这个很简单，就是常见的颜面骑乘，女性跨坐在男生脸上，然后由男生的舌头对女生的桃花秘境进行探秘，这一招很考验男生的口技哦。"
                            imageDescription[2] = "女性跨坐在男性的小腿上，一边吹一边 摩擦小腿，重点在于男性可以把头抬起 来欣赏女性的功夫,所以称为雁首。"
                            imageDescription[3] = "把垫子或枕头垫在女生屁股下方,或者 女生用双腿力量将屁股抬高,张开腿由 男生进行服务。至于为什么要垫枕头或 抬高,因为这样才符合名称——立起来的 花菱。"
                            imageDescription[4] = "女生倒立，男生则站立扶住女生双脚，由男生服务女生。有别一般普通的KJ样式，增添不少刺激感。"
                            imageDescription[5] = "男性用伏地起身的姿势,用舌头亲吻女性全身,男性在来回亲吻女性时候探头 探脑的姿势就好像黄莺渡过山谷一样的 美妙。"
                            imageDescription[6] = "女性一边吹,一边用手指爱抚男性的乳 头,就好像古代弹古筝的样子,所以有“ 曲”的字眼。千鸟是日本人很喜爱的一种 鸟,体态优雅,故此命"
                            imageDescription[7] = "很简单，就是我们俗称的 69，严格来说， 这不算是女性调情，应该是双方互相调 情，至于为何是二巴，各位把两个‘巴’字 反转排列一下,就可以看到这种体位"
                            imageDescription[8] = "女生平躺在床上,双脚尽量夹紧。男生在上,自然地将身体紧贴女生就位。女生双 腿夹得越紧,额外的兴奋越强烈哦"
                            imageDescription[9] = "如图姿势男子仰躺女子坐到男根之上， 男方可用手推动女方臀部，女方可自己 用力气配合上下抽动，这是一种结合度 很高的姿势,奴家超喜欢!"
                            imageDescription[10] = "男生挺直身躺卧床上，女生正向男生将 两脚跨骑于男生两腿上，好像女生在骑 马时候用的那种姿势，律动节奏越快, 欲仙欲死感觉越强烈"
                            imageDescription[11] = "如图所示姿势，女生以进入私处的香肠为圆心进行左三圈右三圈屁股扭扭的运动，也可以前后左右移动跟随自己”爽”的感觉走，高潮so easy！"
                            imageDescription[12] = "男生双脚成 90°坐下。女生岔开双脚背 向跨骑男生身上坐，上身向前微曲，然 后向前向后或上下运动。女生双手可按 在男生膝盖上，帮助自己臀部扭动。"
                            imageDescription[13] = "本姿势可把她的臀部牢牢的控制在你的手里，来回的推送，节奏和挺进的深度 都可自由的控制。非常值得推荐，绝对是爽翻天的爱爱姿势。"
                            imageDescription[14] = "女生仰卧，男生跨过女女生的腿，双膝 跪地让丁丁挺进，直捣黄龙，为女生带来非常愉悦的高潮喷水；本招式方便挺 进，节奏可随意控制"
                            imageDescription[15] = "男生坐椅上，女生坐在爱侣的大腿上, 互相就位啪啪。男女都不需要花太大气 力。女生可以用裙盖住男生下体，极为 生便，适合偷情小情侣使用哦。"
                            imageDescription[16] = "这个系最传统的性交体位法：男上女下，由男性采取主动。男生可用力挺进啪啪， 容易深入就位，“八浅二深”过程极度浪 漫充满激情哦。"
                            imageDescription[17] = "女生平躺呈L形状，保持90度的弯曲。男生侧卧丁丁挺进桃花深处，可以自由控制进入深度和啪啪频率，挺赞的~"
                            imageDescription[18] = "男生屈膝跪下,女生趴下,双手屈曲支撑身体,双脚凌空提起夹住男生腰部,男生小弟弟则深入桃花深处,女生蜜豆也感 受到无限乐趣。"
                            imageDescription[19] = "男生平卧尽量岔开双脚,女生则从上压下乳房贴合滑动刺激,前后律动交欢。女 生双手紧紧扣住男生颈部,双方接吻安 抚性趣无限好。"
                            imageDescription[20] = "站立后进式女生躬身站立男生站女生背后丁丁强力 进攻,这种姿势对于男性来说,非常具有征服的欲望,因为可以看到女性完美的 背部曲线和臀部的丰满。"
                            imageDescription[21] = "这个姿势可让丁丁非常方便进入女生身体，刺激G点，直抵深处，引起女性强烈的快感。双手可以抚摸女生臀部及乳房，让爱侣更快的进入高潮状态。"
                            imageDescription[22] = "两人正坐在床上，男生从后紧抱女生。 女生脚微微向前伸，生便对生下体从后 紧贴交合。男生可以抚摸对生胸部及阴 蒂，性兴奋之余另有一种享受。"
                            imageDescription[23] = "男生双脚屈膝躺在床双手撑起，女生小 妹妹骑在小弟弟身上，身体向后微倾，姿势新潮激爽性趣无穷，但比较考验双方体力。"
                            imageDescription[24] = "双方面对面站立，相拥插入桃花秘境， 给女生带来欢乐的享受及即时的性兴奋；此时女生如果是穿高跟鞋双方配合 会更佳哦！"
                            imageDescription[25] = "这款爱爱姿势有点复杂像剪刀的形状,男女双方能体验新奇的姿势生式，但比较考验双方的体力；男生可观看爱爱全 过程，刺激爆爽。"
                            imageDescription[26] = "女生正面平躺，男生反向卧下双脚岔开就位啪啪啪。这种体位可以上下摇摆尽情发挥享受爱爱的激情，男生还可同时 观看喜爱的AV片，两全其美。"
                            imageDescription[27] = "女生双手撑地，男生站立，提起女生双 脚并将之分开，自己则站在中间深深挺 进。这是一种非常棒的爱爱姿势，不但 新颖且非常刺激。"
                            imageDescription[28] = "如图姿势,女生微微翘起的臀部可以让 丁丁更好的角度深入,刺激女性蜜豆敏感区,男生拉近可更深的渗透,乐趣无穷"
                            imageDescription[29] = "男生跪在床上,男生紧扶女生臀部,丁丁 精准进入或强力冲刺,或缓慢律动,过程 带给女生高潮超爽的享受,本姿势好懂 易学。"
                            imageDescription[30] = "本姿势女生可以很好的控制被插入的深度和动作的幅度，并来回扭动自己的身体调整丁丁触碰的G点位，完美达到高潮。"
                            imageDescription[31] = "女方双腿弯曲由男方动作，像一只体态优雅的千鸟,而上一篇中,千鸟の曲,应 该是形容女方手指在男优乳头处抚摸， 像千鸟的翅膀一样。"
                            imageDescription[32] = "男女生侧身卧，男生摆好姿势方便小弟弟进入鲍鱼欢爱；本体位姿势靓丽性感，又能刺激女生G点，双方配合好更能享受云雨嗨翻的乐趣。"
                            imageDescription[33] = "女生侧卧双脚屈起,男生跪坐女生臀后 私处接吻。本体位能够见到女生漫渺身材的曲线,丁丁可以精准进入,深度、强 度皆自由控制十分舒爽。"
                            imageDescription[34] = "双方对坐，女士双手挽扶，男士双手紧 扶女士臀部，向前向后轻摇抽插，小幅度的动作，也是十分醉心的爱爱姿势， 值得学习。"
                            imageDescription[35] = "女生坐在男生小弟弟身上，同时上下震 动，可以同时用这样的姿势进行 360°的 回转,同时刺激小弟弟的不同部位,这是 女主动的优选激情姿势。"
                            imageDescription[36] = "女性坐在小弟弟上，前后扭动，这招可 以强烈刺激女性阴蒂，由于是女性主导， 女性可以自己找到刺激点，男方可以省 体力尽情享受。"
                            imageDescription[37] = "女生背对爱侣，上身伏下向前弯，双手 可以靠在一张桌上或墙上。男生小弟弟 则从背后挺进桃花深处前后律动，不错 的姿势值得推荐。"
                            imageDescription[38] = "这是非常美妙的一种姿势，可以增添夫妻间的感情，既节省体力又可以让丁丁精准进入私处，刺激G点，环抱女生非常有紧实感。"
                            imageDescription[39] = "男生坐在床上，女生背向坐到男生小弟弟上扭动漫渺的身躯获得更爽的刺激 感；男生抚摸女生乳房和蜜豆，让女生 体验激爽快感。"
                            imageDescription[40] = "女生身躺，男屈膝面对女生，提起女生 双腿下体靠近完全深入对方肉体进行活 塞运动；这个姿势让彼此双方都享受到 高潮喷射的快感。"
                            imageDescription[41] = "这不算什么招式，就是男性对着女性的 爱抚前戏,前戏的爱抚十分重要,基本上 是所有招式得以实现并成功欢愉的关键."
                            imageDescription[42] = "男生伸直脚床上，女生在另外一端大字 型躺在男生身上。女生可主导节奏，男 生可爱抚女生臀部等敏感部位助兴。"
                            imageDescription[43] = "男生平躺床上，女生分开双脚骑男生上 面。一般女上男下招式，女生可以控制 进入的深度来回律动，享受爱爱的喜悦。"
                            imageDescription[44] = "双方站立，女生将其中一只脚向后摆成 90°角男生则站在女生后面。此时男生 需要扶住女生双手以作平衡，其中一只 脚伸向男生肩膀，形态如飞燕一般。"
                            imageDescription[45] = "女上男下，双方朝相反生向，女生双手 向后撑起坐到男生大腿之间，双脚伸到 男生双臂上。女生可以依赖双手带动臀 部，男生可用手爱抚女生腰部及胸部， 体位刺激易学。"
                            imageDescription[46] = "此种姿势可以让小弟弟进入桃花深处， 挺进的深度和动作的幅度自己可以控制 好;女生是非常享受这种姿势的哦。"
                            imageDescription[47] = "坐赖这种姿势真的非常赞，欲罢不能。对于 男生来说，小弟弟能感受到女生整个人 的重量，非常具有紧实的饱和感，具备 强烈的满足感。"

                            switch(index){
                            case 0:
                                imagetext.text = imageDescription[0]
                                break;
                            case 1:
                                imagetext.text = imageDescription[1]
                                break;
                            case 2:
                                imagetext.text = imageDescription[2]
                                break;
                            case 3:
                                imagetext.text = imageDescription[3]
                                break;
                            case 4:
                                imagetext.text = imageDescription[4]
                                break;
                            case 5:
                                imagetext.text = imageDescription[5]
                                break;
                            case 6:
                                imagetext.text = imageDescription[6]
                                break;
                            case 7:
                                imagetext.text = imageDescription[7]
                                break;
                            case 8:
                                imagetext.text = imageDescription[8]
                                break;
                            case 9:
                                imagetext.text = imageDescription[9]
                                break;
                            case 10:
                                imagetext.text = imageDescription[10]
                                break;
                            case 11:
                                imagetext.text = imageDescription[11]
                                break;
                            case 12:
                                imagetext.text = imageDescription[12]
                                break;
                            case 13:
                                imagetext.text = imageDescription[13]
                                break;
                            case 14:
                                imagetext.text = imageDescription[14]
                                break;
                            case 15:
                                imagetext.text = imageDescription[15]
                                break;
                            case 16:
                                imagetext.text = imageDescription[16]
                                break;
                            case 17:
                                imagetext.text = imageDescription[17]
                                break;
                            case 18:
                                imagetext.text = imageDescription[18]
                                break;
                            case 19:
                                imagetext.text = imageDescription[19]
                                break;
                            case 20:
                                imagetext.text = imageDescription[20]
                                break;
                            case 21:
                                imagetext.text = imageDescription[21]
                                break;
                            case 22:
                                imagetext.text = imageDescription[22]
                                break;
                            case 23:
                                imagetext.text = imageDescription[23]
                                break;
                            case 24:
                                imagetext.text = imageDescription[24]
                                break;
                            case 25:
                                imagetext.text = imageDescription[25]
                                break;
                            case 26:
                                imagetext.text = imageDescription[26]
                                break;
                            case 27:
                                imagetext.text = imageDescription[27]
                                break;
                            case 28:
                                imagetext.text = imageDescription[28]
                                break;
                            case 29:
                                imagetext.text = imageDescription[29]
                                break;
                            case 30:
                                imagetext.text = imageDescription[30]
                                break;
                            case 31:
                                imagetext.text = imageDescription[31]
                                break;
                            case 32:
                                imagetext.text = imageDescription[32]
                                break;
                            case 33:
                                imagetext.text = imageDescription[33]
                                break;
                            case 34:
                                imagetext.text = imageDescription[34]
                                break;
                            case 35:
                                imagetext.text = imageDescription[35]
                                break;
                            case 36:
                                imagetext.text = imageDescription[36]
                                break;
                            case 37:
                                imagetext.text = imageDescription[37]
                                break;
                            case 38:
                                imagetext.text = imageDescription[38]
                                break;
                            case 39:
                                imagetext.text = imageDescription[39]
                                break;
                            case 40:
                                imagetext.text = imageDescription[40]
                                break;
                            case 41:
                                imagetext.text = imageDescription[41]
                                break;
                            case 42:
                                imagetext.text = imageDescription[42]
                                break;
                            case 43:
                                imagetext.text = imageDescription[43]
                                break;
                            case 44:
                                imagetext.text = imageDescription[44]
                                break;
                            case 45:
                                imagetext.text = imageDescription[45]
                                break;
                            case 46:
                                imagetext.text = imageDescription[46]
                                break;
                            case 47:
                                imagetext.text = imageDescription[47]
                                break;
                            }
                        }
                        else{
                            clickCount = 0
                            textrectangle.visible = false
                        }
                    }
                }

            }
        }
    }

}

/*##^##
Designer {
    D{i:2;anchors_height:330;anchors_width:640}D{i:1;anchors_height:330;anchors_width:640}
}
##^##*/
