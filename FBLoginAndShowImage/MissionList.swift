//
//  MissionList.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/31.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import Foundation

class Mission {
    var name = ""
    var pic = ""
    init(name: String, pic: String){
        self.name = name
        self.pic = pic
    }
    static var missionList = [
        Mission(name: "默契考驗", pic: "任務完成icon"),
        Mission(name: "寫三篇心情交換日記", pic: "任務未完成icon"),
        Mission(name: "共同完成一張畫象", pic: "任務完成icon"),
        Mission(name: "說出對方吸引你的三個特質", pic: "任務完成icon")
        
    ]
}


