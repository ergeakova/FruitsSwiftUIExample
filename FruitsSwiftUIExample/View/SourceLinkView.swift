//
//  SourceLinkView.swift
//  FruitsSwiftUIExample
//
//  Created by Erge Gevher Akova on 21.09.2022.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - PROPERTIES
    var fruitTitle: String = ""
    
    
    // MARK: - BODY
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://tr.wikipedia.org/w/index.php?search=\(fruitTitle)&ns0=1")!)
                Image(systemName: "arrow.up.right")
            }
            .font(.footnote)
        }
    }
}

// MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruitTitle: fruitsData[0].title)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
