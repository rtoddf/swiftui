//got to 18:34

import SwiftUI

struct ContentView : View {
    let posts = ["1", "2", "3"]
    
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
                ForEach(posts.identified(by: \.self)){ post in
                    PostView()
                }
            }.navigationBarTitle(Text("Youtubers"))
        }
    }
}

struct PostView: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image("dylan")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .aspectRatio(CGSize(width: 60, height: 60), contentMode: .fit)
                    .clipped()
                    .clipShape(Circle())
                VStack (alignment: .leading, spacing: 4) {
                    Text("Dylan Geick")
                        .font(.headline)
                    Text("This is the date")
                        .font(.subheadline)
                }
            }.padding(.leading, 16).padding(.top, 16)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse luctus eros sit amet lorem finibus, et varius ante interdum.")
                .lineLimit(nil)
                .padding(.leading, 16)
                .padding(.trailing, 32)
            Image("dylan_large")
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
