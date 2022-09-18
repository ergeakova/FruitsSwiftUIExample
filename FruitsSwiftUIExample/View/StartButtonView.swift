//
//  StartButtonView.swift
//  FruitsSwiftUIExample
//
//  Created by Erge Gevher Akova on 19.09.2022.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ZStack{
            Button {
                print("Exit the onboarding")
            } label: {
                HStack(spacing: 8){
                    Text("Start")
                    
                    Image(systemName: "arrow.right.circle")
                        .imageScale(.large)
                    
                }// MARK: HSTACK
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(Capsule().strokeBorder(.white, lineWidth: 1.25))
            }// MARK: - BUTTON
            .accentColor(.white)

        }// MARK: - ZSTACK
    }
}


// MARK: PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
