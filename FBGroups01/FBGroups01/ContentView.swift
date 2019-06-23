//got to 29.48

import SwiftUI

struct Post {
    let id: Int
    let thumbnail, username, text, imageName: String
}

struct ContentView : View {
    let posts: [Post] = [
        .init(id: 0, thumbnail: "dylan", username: "Dylan Geick", text: "Sed elementum eleifend arcu ut commodo. Cras sit amet pulvinar odio, at consequat nisi. Proin magna sem, dapibus eu tellus a, placerat efficitur arcu.", imageName: "dylan_large"),
        .init(id: 1, thumbnail: "crawford", username: "Matthew Crawford", text: "Praesent eu venenatis dui, scelerisque posuere erat. Aliquam et lacus dignissim, interdum velit non, ultricies ante. Praesent at venenatis quam. Phasellus porta ex lorem, sit amet sagittis dolor vehicula vitae.", imageName: "crawford_large"),
        .init(id: 2, thumbnail: "franta", username: "Connor Franta", text: "Etiam ultrices, quam eu sodales pretium, ex diam aliquet turpis, ut tincidunt erat justo sed dui.", imageName: "franta_large"),
        .init(id: 3, thumbnail: "yang", username: "Eugene Lee Yang", text: "Duis feugiat metus id augue consectetur, a porta mauris ultricies. Duis id arcu at neque fermentum cursus. Pellentesque suscipit, mi sit amet ullamcorper tempor, quam massa consectetur nisi, id consectetur odio nulla fermentum est. Sed in fermentum orci.", imageName: "yang_large"),
        .init(id: 4, thumbnail: "yummertime", username: "Yummertime", text: "Pellentesque finibus eleifend justo, eu consequat nulla rhoncus vitae. Fusce at scelerisque lectus, a molestie ligula.", imageName: "yummertime_large"),
        .init(id: 5, thumbnail: "pj-thomas", username: "PJ & Thomas", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse luctus eros sit amet lorem finibus, et varius ante interdum.", imageName: "pj-thomas_large")
    ]
    
    var body: some View {
        NavigationView {
            List {
                VStack (alignment: .leading) {
                    Text("Trending")
                    ScrollView {
                        VStack (alignment: .leading) {
                            HStack {
                                ForEach(posts.identified(by: \.id)){ post in
                                    TrendingPostView(post: post)
                                }
                            }
                        }
                    }.frame(height: 190)
                }.padding(.bottom, -8)
                
                // post rows
                ForEach(posts.identified(by: \.id)){ post in
                    PostView(post: post)
                }
            }.navigationBarTitle(Text("Youtubers"))
        }
    }
}

struct TrendingPostView: View {
    let post: Post
    
    var body: some View {
        VStack (alignment: .leading) {
            Image(post.thumbnail)
                .resizable()
                .frame(width: 120, height: 120)
                .clipped()
                .padding(.leading, 0)
            Text(post.username).lineLimit(nil)
            Spacer()
            }.frame(width: 120, height: 180)
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
                .padding(.trailing, 8)
            Image(post.imageName)
                .resizable()
                .aspectRatio(CGSize(width: 16, height: 9), contentMode: .fit)
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
