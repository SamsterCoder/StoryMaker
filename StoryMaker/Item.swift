//
//  Item.swift
//  StoryMaker
//
//  Created by Sam Helbig on 25.06.26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
