//
//  FruitCardView.swift
//  FruitsSwiftUIExample
//
//  Created by Erge Gevher Akova on 19.09.2022.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    var fruite: Fruit
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20){
                // MARK: FRUIT IMAGE
                Image(fruite.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8 ,x: 6, y:8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // MARK: FRUITE TITLE
                Text(fruite.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2 , x: 2, y: 2)
                
                // MARK: FRUIT HEADLINE
                Text(fruite.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // MARK: START BUTTON
                StartButtonView()
            } // MARK: - VSTACK
        }// MARK: - ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruite.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}


// MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruite: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
