//
//  Entry.swift
//  DreamJournal
//
//  Created by antikiller on 06.07.2022.
//

import Foundation

struct Entry: Identifiable {
    
    var title: String
    var body: String
    //added default values
    
    var date = Date()
    var id = UUID()
}
