//
//  ContentView.swift
//  klipit
//
//  Created by Kieran Lawrence on 30/10/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var clipboardMonitor = ClipboardMonitor()
    var body: some View {
        VStack {
            List(clipboardMonitor.clipboardHistory, id: \.self) { item in
                Button(action: {
                    let pasteboard = NSPasteboard.general
                    pasteboard.clearContents()
                    pasteboard.setString(item, forType: .string)
                }, label: {
                    Text(item.trimmingCharacters(in: .whitespacesAndNewlines))
                        .lineLimit(1)
                })
                .buttonStyle(.borderless)
                .foregroundColor(.accentColor)

                
            }
        }
        .onAppear {
            clipboardMonitor.checkClipboard()
        }
    }
}
