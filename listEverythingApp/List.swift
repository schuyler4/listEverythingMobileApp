//
//  List.swift
//  listEverythingApp
//
//  Created by Marek Newton on 11/7/16.
//  Copyright © 2016 Marek Newton. All rights reserved.
//

import Foundation

class List {
    var id: Int64?
    var title: String
    var description: String
    
    init(id: Int64) {
        self.id = id
        title = ""
        description = ""
    }
    
    init(id: Int64, title: String, description: String) {
        self.id = id
        self.title = title
        self.description = description
    }
}
