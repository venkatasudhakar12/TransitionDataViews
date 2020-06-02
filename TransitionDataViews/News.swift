//
//  News.swift
//  TransitionDataViews
//
//  Created by venkata sudhakar on 02/06/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import Foundation
class News:ObservableObject {
    @Published var title:String = ""
    @Published var  content:String = ""
}

class NewChannel:ObservableObject {
    @Published var channelName:String = "Time Of India"
}
