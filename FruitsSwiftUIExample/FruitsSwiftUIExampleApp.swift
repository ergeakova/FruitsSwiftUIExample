//
//  FruitsSwiftUIExampleApp.swift
//  FruitsSwiftUIExample
//
//  Created by Erge Gevher Akova on 18.09.2022.
//

import SwiftUI

@main
struct FruitsSwiftUIExampleApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else {
                ContentView()
            }
        }
    }
}
