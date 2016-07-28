//
//  ProfileImage.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/4.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import Foundation


class ProfileImageList {
    static var pic = [
        ProfileImageList(name: "rufy", description: "蒙其·D·魯夫", content: ""),
        ProfileImageList(name: "rufy", description: "1234567890", content: ""),
        ProfileImageList(name: "nami", description: "", content: ""),
        ProfileImageList(name: "robin", description: "", content: ""),
        ProfileImageList(name: "sanji", description: "", content: ""),
        ProfileImageList(name: "shark", description: "", content: ""),
        ProfileImageList(name: "solon", description: "", content: ""),
        ProfileImageList(name: "usobu", description: "", content: ""),
        ProfileImageList(name: "1", description: "", content: ""),
        ProfileImageList(name: "2", description: "", content: "")
    ]
    var name: String
    var description: String
    var content: String
    
    init(name: String, description: String, content: String){
        self.name = name
        self.description = description
        self.content = content
    }
}

class ProfilePictureList {

    static var pic = [
        ProfilePictureList(name: "1", description: "", content: ""),
        ProfilePictureList(name: "2", description: "", content: ""),
        ProfilePictureList(name: "3", description: "", content: ""),
        ProfilePictureList(name: "4", description: "", content: ""),
        ProfilePictureList(name: "sky", description: "", content: "")
    ]
    var name: String
    var description: String
    var content: String
    
    init(name: String, description: String, content: String){
        self.name = name
        self.description = description
        self.content = content
    }
}


