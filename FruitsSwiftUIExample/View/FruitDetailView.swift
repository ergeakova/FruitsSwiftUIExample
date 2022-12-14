//
//  FruitDetailView.swift
//  FruitsSwiftUIExample
//
//  Created by Erge Gevher Akova on 21.09.2022.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20){
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        FruitNutrientsView(nutriensts: fruit.nutrition)
                        // SUBHEADLINE
                        Text("Learn more aboute \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        // LINK
                        SourceLinkView(fruitTitle: fruit.title)
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } // MARK: VSTACK
                    .padding(.horizontal, 20)
                    .frame(alignment: .center)
                } // MARK: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } // MARK: SCROLL
            .edgesIgnoringSafeArea(.top)
        } // MARK: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
}

// MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
