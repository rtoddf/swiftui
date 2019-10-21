import SwiftUI

struct CircleImage: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 100, height: 100)
    }
}
