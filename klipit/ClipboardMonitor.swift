//
//  ClipboardMonitor.swift
//  klipit
//
//  Created by Kieran Lawrence on 30/10/2024.
//

import Foundation
import AppKit

class ClipboardMonitor:ObservableObject {
    @Published var clipboardHistory: [String] = []
 
    func checkClipboard() {
        let pasteboard = NSPasteboard.general
        if let items = pasteboard.pasteboardItems {
            for item in items {
                if let string = item.string(forType: .string) {
                    if clipboardHistory.last != string {
                        clipboardHistory.insert(string,at:0)
                    }
               }
            }
        }
    }
}
