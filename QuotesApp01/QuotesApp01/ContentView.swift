import SwiftUI

struct ContentView: View {
    var body: some View {
        MainView()
    }
}



struct MainView: View {
    let quotes = ["quote 1", "quote 2", "quote 1", "quote 2", "quote 1", "quote 2", "quote 1", "quote 2", "quote 1", "quote 2", "quote 1", "quote 2"]
    
    var body: some View {
        VStack() {
            HStack {
                Text("Quotes Available")
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(.purple)
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(self.quotes, id: \.self) {
                        quote in
                        VStack {
                            Image("lilly")
                                .resizable()
                                .frame(width: 100, height: 100)
                            Text(quote)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
