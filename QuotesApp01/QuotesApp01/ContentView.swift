import SwiftUI

struct ContentView: View {
    var quotes: [Quote]
//    var quotes: [Quote] = [
//        Quote(quote: "Whatever the mind can achieve...", name: "James Bonc"),
//        Quote(quote: "Whatever the mind can achieve...", name: "James Bonc"),
//        Quote(quote: "Whatever the mind can achieve...", name: "James Bonc"),
//        Quote(quote: "Whatever the mind can achieve...", name: "James Bonc"),
//        Quote(quote: "Whatever the mind can achieve...", name: "James Bonc"),
//        Quote(quote: "Whatever the mind can achieve...", name: "James Bonc")
//    ]
    
    var body: some View {
        VStack {
            CircleImage(imageName: "lilly")
                .frame(width: 200, height: 200)
                .padding(.top, 90)
                .padding(.bottom, 20)
            MainView(quotes: quotes)
            Spacer()
        }.background(Image("motivation_bg")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all))
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
