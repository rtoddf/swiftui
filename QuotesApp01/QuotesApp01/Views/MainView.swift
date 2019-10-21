//
//  MainView.swift
//  QuotesApp01
//
//  Created by Todd Fleeman on 10/21/19.
//  Copyright © 2019 Todd Fleeman. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var quotes: [Quote]
    
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
                    ForEach(self.quotes, id: \.name) {
                        quote in
                        
                        VStack {
                            CircleImage(imageName: "lilly")
                            Text(quote.quote)
                            Divider()
                            Text("By: \(quote.name)")
                                .font(.custom("Helvetica neue", size: 14))
                                .italic()
                        }.frame(width: 300, height: 300)
                            .foregroundColor(.gray)
                            .padding(.all, 4)
                            .background(Color.white)
                            .cornerRadius(13)
                            .overlay(Rectangle()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [.clear, .gray]), startPoint: .center, endPoint: .topLeading
                                ))
                                .clipped()
                                .shadow(radius: 8))
                    }
                }
            }
        }
    }
}

//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
