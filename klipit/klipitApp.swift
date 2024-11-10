//
//  klipitApp.swift
//  klipit
//
//  Created by Kieran Lawrence on 30/10/2024.
//

import SwiftUI

@main
struct klipitApp: App {
    var body: some Scene {
        MenuBarExtra("",systemImage:"paperclip.circle") {
            ContentView()
        }
        .menuBarExtraStyle(.window)
    }
}
