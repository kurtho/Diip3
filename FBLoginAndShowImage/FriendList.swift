//
//  FriendList.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/31.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import Foundation

class Friend {
    var name = ""
    var image = ""
    var title = String()
    var percent = Int()
    
    init(name: String, image: String, title: String, percent: Int) {
        self.name = name
        self.image = image
        self.title = title
        self.percent = percent
    }
    
    static var friendList = [
        Friend(name: "匿名獨角獸", image: "woman_1", title: "平面設計師", percent: 65),
        Friend(name: "匿名犀牛", image: "匿名犀牛", title: "前端工程師", percent: 75),
        Friend(name: "匿名毛怪", image: "匿名毛怪", title: "服務業", percent: 10),
        Friend(name: "匿名狐狸", image: "woman-5", title: "吉它手", percent: 45)
    ]
}

