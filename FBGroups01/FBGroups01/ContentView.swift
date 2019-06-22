//got to 18:34

import SwiftUI

struct Post {
    let id: Int
    let thumbnail, username, text, imageName: String
}

struct ContentView : View {
    let posts: [Post] = [
        .init(id: 0, thumbnail: "franta", username: "Connor Franta", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse luctus eros sit amet lorem finibus, et varius ante interdum.", imageName: "franta_large"),
        .init(id: 1, thumbnail: "crawford", username: "Matthew Crawford", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse luctus eros sit amet lorem finibus, et varius ante interdum.", imageName: "crawford_large"),
        .init(id: 2, thumbnail: "dylan", username: "Dylan Geick", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse luctus eros sit amet lorem finibus, et varius ante interdum.", imageName: "dylan_large")
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                ScrollView {
                    VStack (alignment: .leading) {
                        Text("Trending")
                        HStack {
                            Text("number one")
                            Text("number one")
                            Text("number one")
                            Text("number one")
                            Text("number one")
                            Text("number one")
                        }
                    }
                }.frame(height: 100)
                
                // post rows
                ForEach(posts.identified(by: \.id)){ post in
                    PostView(post: post)
                }
            }.navigationBarTitle(Text("Youtubers"))
        }
    }
}

struct PostView: View {
    let post: Post
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image(post.thumbnail)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .aspectRatio(CGSize(width: 60, height: 60), contentMode: .fit)
                    .clipped()
                    .clipShape(Circle())
                VStack (alignment: .leading, spacing: 4) {
                    Text(post.username)
                        .font(.headline)
                    Text("This is the date")
                        .font(.subheadline)
                }
            }.padding(.leading, 16).padding(.top, 16)
            
            Text(post.text)
                .lineLimit(nil)
                .padding(.leading, 16)
                .padding(.trailing, 32)
            Image(post.imageName)
                .resizable()
                .aspectRatio(CGSize(width: 1.500, height: 1.0), contentMode: .fit)
                .padding(.trailing, -32)
            
        }.padding(.leading, -20).padding(.bottom, -8)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
