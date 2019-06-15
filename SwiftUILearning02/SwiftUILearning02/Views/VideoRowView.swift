//
//  VideoRowView.swift
//  SwiftUILearning02
//
//  Created by Todd Fleeman on 6/14/19.
//  Copyright © 2019 Todd Fleeman. All rights reserved.
//

import SwiftUI

struct VideoRowView : View {
    var body: some View {
        HStack(alignment: .top) {
            Image("thumb01")
                .resizable()
                .frame(width: 150, height: 110)
            VStack(alignment: .leading) {
                Text("Ezra Miller")
                    .font(.headline)
                    .fontWeight(.black)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in semper risus. Quisque nulla odio, laoreet id ligula lacinia, mollis maximus nunc.")
                    .font(.body) .multilineTextAlignment(.leading)
                    .lineLimit(4)
                Spacer()
            }
            Spacer()
        }
//        .padding(10)
    }
}

#if DEBUG
struct VideoRowView_Previews : PreviewProvider {
    static var previews: some View {
        VideoRowView()
    }
}
#endif
