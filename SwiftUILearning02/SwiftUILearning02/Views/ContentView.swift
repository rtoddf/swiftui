//
//  ContentView.swift
//  SwiftUILearning02
//
//  Created by Todd Fleeman on 6/14/19.
//  Copyright © 2019 Todd Fleeman. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            CardImageView()
            List {
                VideoRowView()
                VideoRowView()
                VideoRowView()
                VideoRowView()
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
