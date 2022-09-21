//
//  FruitNutrientsView.swift
//  FruitsSwiftUIExample
//
//  Created by Erge Gevher Akova on 21.09.2022.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPERTIES
    let nutrienstsTitle: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minarals"]
    var nutriensts: [String]
    
    
    // MARK: - BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrienstsTitle.count, id: \.self){ item in
                    Divider().padding(.vertical, 2)
                    HStack(spacing: 10){
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrienstsTitle[item])
                        }
                        .foregroundColor(.indigo)
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(nutriensts[item])
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(5)
                }
            }
        } // MARK: GROUPBOX
    }
}

// MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(nutriensts: fruitsData[0].nutrition)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
