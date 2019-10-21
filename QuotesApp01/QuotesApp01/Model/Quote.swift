//
//  Quote.swift
//  QuotesApp01
//
//  Created by Todd Fleeman on 10/21/19.
//  Copyright © 2019 Todd Fleeman. All rights reserved.
//

import Foundation
import SwiftUI

struct Quote: Hashable, Decodable {
//    var id = UUID()
    var quote: String
    var name: String
}
