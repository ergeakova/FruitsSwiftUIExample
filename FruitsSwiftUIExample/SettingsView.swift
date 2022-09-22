//
//  SettingsView.swift
//  FruitsSwiftUIExample
//
//  Created by Erge Gevher Akova on 22.09.2022.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    // MARK: - SECTION 2
                    GroupBox(
                      label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                      Divider().padding(.vertical, 4)
                      
                      Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                        .padding(.vertical, 8)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                      
                      Toggle(isOn: $isOnboarding) {
                        if isOnboarding {
                          Text("Restarted".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(Color.green)
                        } else {
                          Text("Restart".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(Color.secondary)
                        }
                      }
                      .padding()
                      .background(
                        Color(UIColor.tertiarySystemBackground)
                          .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                      )
                    }
                    // MARK: - SECTION 3
                    GroupBox(
                        label:
                            SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingRowView(name: "Developer", content: "Erge AKOVA")
                        SettingRowView(name: "Compatibility", content: "iOS 15, iOS 16")
                        SettingRowView(name: "Website", linkLabel: "Google", linkDestination: "http://www.google.com")
                    }
                }
                .navigationBarTitle( Text("Setting"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()},
                               label: {
                                   Image(systemName: "xmark")})
                )
                .padding()
            } // MARK: SCROLL
        } // Mark: NAVIGATION
        
    }
}

// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
