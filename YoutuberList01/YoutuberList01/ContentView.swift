//
//  ContentView.swift
//  YoutuberList01
//
//  Created by Todd Fleeman on 6/15/19.
//  Copyright © 2019 Todd Fleeman. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id: Int
    let name, message, imageName: String
}

struct ContentView : View {
    let users: [User] = [
        .init(id: 0, name: "Eugene Yang", message: "Fusce eget mi nisl. Vivamus tincidunt mollis massa, non luctus metus rutrum id. Nulla sagittis aliquam cursus. In nisl eros, consequat et eleifend vitae, interdum sit amet purus. Morbi porta et felis non convallis. Phasellus et nulla vel enim eleifend ullamcorper.", imageName: "yang"),
        .init(id: 1, name: "PJ & Thomas", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", imageName: "pj-thomas"),
        .init(id: 2, name: "Yummertime", message: "Phasellus molestie ipsum mauris, ac tempor velit venenatis non. Duis sollicitudin felis vehicula purus viverra, vitae fringilla orci vulputate.", imageName: "yummertime")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users.identified(by: \.id)) { user in
                    UserRows(user: user)
                }
            }.navigationBarTitle(Text("Youtubers"))
        }
    }
}

struct UserRows: View {
    let user: User
    
    var body: some View {
        HStack {
            // (alignment: .top)
            Image(user.imageName)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .frame(width: 70, height: 70)
            // .clipped()
            VStack (alignment: .leading) {
                Text(user.name).font(.headline)
                Text(user.message).font(.subheadline)
                    .lineLimit(nil)
                }.padding(.leading, 8)
            }.padding(.init(top: 12, leading: 0, bottom: 12, trailing: 0))
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
