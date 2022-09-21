//
//  ContentView.swift
//  FruitsSwiftUIExample
//
//  Created by Erge Gevher Akova on 18.09.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List{
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        } // MARK: NAVIGATION
    }
}

// MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
