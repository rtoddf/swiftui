import SwiftUI

struct CircleImage: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color.gray, lineWidth: 2))
            .shadow(radius: 10)
            .frame(width: 100, height: 100)
    }
}
