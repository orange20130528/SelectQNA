//
//  AddQuestion.swift
//  SelectQNA
//
//  Created by 歐陽橘子 on 2021/2/2.
//

import Foundation

class AddQuestion {
    
    var questionList:[QnA] = []
    
    internal init() {
        add()
    }
    
    func add(){
        questionList.append(QnA.init(question: "名偵探柯男從出生到2008年出了幾部劇場版？", selectQuestion: ["10部", "12部", "14部", "16部"], answer: "12部"))
        questionList.append(QnA.init(question: "閃電霹靂車tv版的年份是西元幾年？", selectQuestion: ["2015年", "2016年", "2017年", "2018年"], answer: "2015年"))
        questionList.append(QnA.init(question: "純情房東悄房客中，景太郎於入住雛田莊第一個情人節所造的巧克力叫什麼名字?", selectQuestion: ["摩洛索夫製果", "Valentine's Day", "金沙", "99特製苦澀甘美風味"], answer: "99特製苦澀甘美風味"))
        questionList.append(QnA.init(question: "讓柯南吃了會變小的藥(一種讓細胞萎縮的藥)，藥號為何?", selectQuestion: ["AKB48", "ATPX4869", "RU486", "TOMOluiton"], answer: "ATPX4869"))
        questionList.append(QnA.init(question: "在名偵探柯南《外交官殺人事件》柯南被服部灌下一種酒變成新一。請問是哪種酒?", selectQuestion: ["高粱", "伏特加", "白乾", "血腥瑪麗"], answer: "白乾"))
        questionList.append(QnA.init(question: "國父革命十一次才成功。在第一代神奇寶貝，皮卡丘打第三道管(雷丘)幾次成功?", selectQuestion: ["1次", "2次", "3次", "4次"], answer: "2次"))
        questionList.append(QnA.init(question: "亂馬1/2裡，是誰會變成姬亂馬害怕的動物?", selectQuestion: ["響牙涼", "早乙女玄馬", "早乙女亂馬", "姍璞"], answer: "姍璞"))
        questionList.append(QnA.init(question: "麥當勞是大眾普及的食物，裡面有各式各樣的食物令人垂涎欲滴。小智的皮卡丘最愛吃的食物在裡面當然也找的到。請問是甚麼?", selectQuestion: ["番茄醬", "漢堡", "雞塊", "可樂"], answer: "番茄醬"))
        questionList.append(QnA.init(question: "獵人中，幻影旅團裡窩金死了，真是痛失英才。請問他的遺言是甚麼?", selectQuestion: ["啊～～～", "本大爺最強", "救命", "去死啦"], answer: "去死啦"))
        questionList.append(QnA.init(question: "電動神奇寶貝中，鬼斯通如何進化成耿鬼?", selectQuestion: ["等級條件進化", "親密度進化", "進化石進化", "傳輸進化"], answer: "傳輸進化"))
        questionList.append(QnA.init(question: "靈異教師神眉，身邊總是有一群女生圍繞，請問他最後跟誰結婚?", selectQuestion: ["雪姬", "玉藻", "稻葉鄉子", "石川老師"], answer: "雪姬"))
        questionList.append(QnA.init(question: "黑貓中，拖雷最愛的飲料是?", selectQuestion: ["牛奶", "可樂", "冰沙", "熱可可"], answer: "牛奶"))
        questionList.append(QnA.init(question: "有17歲教教祖之稱的聲優是誰?", selectQuestion: ["雨宮天", "戶松遙", "井上喜久子", "小倉唯"], answer: "井上喜久子"))
        questionList.append(QnA.init(question: "多拉a夢的第一部劇場板是哪一部?", selectQuestion: ["大雄與恐龍", "大雄的天方夜譚", "大雄的創世日記", "大雄的魔界大冒險"], answer: "大雄與恐龍"))
        questionList.append(QnA.init(question:  "遊戲王中,闇遊戲的真名為?", selectQuestion: ["雅姆舒", "布魯姆", "亞圖姆", "雅莉姆"], answer: "亞圖姆"))
        questionList.append(QnA.init(question: "100%的草莓 哪為角色負責寫劇本?", selectQuestion: ["西野司", "北大路五月", "南户唯", "東城綾"], answer: "東城綾"))
    }
}
