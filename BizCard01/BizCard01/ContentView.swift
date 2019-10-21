import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(){
            CircleImage(imageName: "robin")
            VStack() {
                Text("Todd Fleeman")
                    .font(.title)
                    .foregroundColor(.white)
                Text("Build apps with Todd")
                    .font(.subheadline)
                    .foregroundColor(.white)
                HStack(){
                    Image(systemName: "t.square.fill")
                        .foregroundColor(.white)
                    Text("@rtoddf")
                        .font(.subheadline)
                        .foregroundColor(Color.orange)
                        .bold()
                        .italic()
                }
            }
        }.frame(width: 380, height: 200)
            .background(Color.gray)
            .cornerRadius(8)
            .shadow(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
