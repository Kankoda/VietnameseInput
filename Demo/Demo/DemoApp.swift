//
//  DemoApp.swift
//  Demo
//
//  Created by Daniel Saidi on 2025-06-08.
//

import SwiftUI
import VietnameseInput

@main
struct DemoApp: App {
    var body: some Scene {
        WindowGroup {
            VietnameseInputLicenseView(licenseKey: "FREE") { _ in
                ContentView()
            }
        }
    }
}
