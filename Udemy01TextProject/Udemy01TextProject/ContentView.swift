import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .trailing, spacing: 23) {
            Text("Aother Item")
            
            Text("Hello World")
                .font(.largeTitle)
                .foregroundColor(.orange)
                // not .color
                .bold()
        }.background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
