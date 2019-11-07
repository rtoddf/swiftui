import SwiftUI

struct QuakeDetails: View {
    var data: Features
    
    var body: some View {
        VStack {
            Text(data.properties.place)
        }
    }
}
