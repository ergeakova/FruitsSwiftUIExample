//
//  OnboardingView.swift
//  FruitsSwiftUIExample
//
//  Created by Erge Gevher Akova on 19.09.2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits){ fruit in
                FruitCardView(fruite: fruit)
            }// MARK: FOREACH
        }// MARK: TABLEVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
