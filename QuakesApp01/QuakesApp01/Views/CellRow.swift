import SwiftUI

struct CellRow: View {
    var data:Features
    
    var body: some View {
        HStack(alignment: .center, spacing: 9) {
            VStack(alignment: .leading) {
                VStack {
                    Text(String(data.properties.mag))
                        .bold()
                        .foregroundColor(.white)
                        .font(.headline)
                }.frame(width: 100, height: 100)
                    .background(Color.green)
            }.clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                .shadow(radius: 10)
            
            VStack(alignment: .leading) {
                Text(data.properties.place)
                    .foregroundColor(.gray)
                    .bold()
                
                Text(timeConverter(timeStamp: data.properties.time))
                    .italic()
                    .foregroundColor(.orange)
                    .font(.subheadline)
                    .padding(.top, 2)
            }
        }
    }
}
