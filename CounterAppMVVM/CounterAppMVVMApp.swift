//
//  CounterAppMVVMApp.swift
//  CounterAppMVVM
//
//  Created by Home User 2 on 28/12/2021.
//

import SwiftUI

@main
struct CounterAppMVVMApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView() //basic example using @state and @binding
            ContentViewMVVM()
        }
    }
}
