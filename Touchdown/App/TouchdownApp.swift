//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Mabast on 4/4/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
