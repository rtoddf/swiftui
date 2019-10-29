import SwiftUI

struct ContentView: View {
    @ObservedObject var networkingManager = NetworkingManager()
    
    var body: some View {        
        List(networkingManager.dataList) {
            data in
            VStack(alignment: .leading, spacing: 8) {
                Text(data.title)
                    .font(.title)
                    .foregroundColor(.gray)
                Text(data.body)
                    .font(.body)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
