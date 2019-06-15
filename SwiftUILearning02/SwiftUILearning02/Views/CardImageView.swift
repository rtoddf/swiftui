//
//  CardImageView.swift
//  SwiftUILearning02
//
//  Created by Todd Fleeman on 6/14/19.
//  Copyright © 2019 Todd Fleeman. All rights reserved.
//

import SwiftUI

struct CardImageView : View {
    var body: some View {
        Image("ezra_miller")
            .resizable()
            .aspectRatio(CGSize(width: 1.456, height: 1.0), contentMode: .fit)
            .cornerRadius(10)
            .padding(10)
            .shadow(radius: 3)
    }
}

#if DEBUG
struct CardImageView_Previews : PreviewProvider {
    static var previews: some View {
        CardImageView()
    }
}
#endif
