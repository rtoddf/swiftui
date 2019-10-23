//
//  ContentView.swift
//  ListApp01
//
//  Created by Todd Fleeman on 10/23/19.
//  Copyright © 2019 Todd Fleeman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let countries: [Country] = [
        Country(name: "Mozambique", population: "29.67 mil", id: 0),
        Country(name: "USA", population: "327.2 million", id: 1),
        Country(name: "England", population: "55.98 million", id: 2),
        Country(name: "France", population: "66.99 million", id: 3),
        Country(name: "Germany", population: "82.79 million", id: 4)
    ]
    
    var names = ["Marcie", "Larry", "Todd", "Wendy", "Manny", "Katie"]
    
    var body: some View {
        NavigationView {
            List(self.countries, id:\.id) {
                country in
                NavigationLink(destination: Destination(country: country)) {
                    CellRow(country: country)
                }.navigationBarTitle("Countries of the World")
            }
        }
    }
}

struct Destination:View {
    var country: Country
    var body: some View {
        VStack {
            Text(country.name)
                .font(.headline)
            Text("The population is \(country.population)")
        }
    }
}

struct CellRow: View {
    var country: Country
    var body: some View {
        VStack(alignment:.leading, spacing: 7) {
            Text(country.name)
                .bold()
                .font(.headline)
            Text(String(country.population))
                .font(.subheadline)
                .foregroundColor(.gray)
                .italic()
        }
    }
}

struct Country {
    let name:String
    let population:String
    let id:Int
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
