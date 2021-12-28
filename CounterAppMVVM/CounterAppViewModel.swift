//
//  CounterAppViewModel.swift
//  CounterAppMVVM
//
//  Created by Home User 2 on 28/12/2021.
//

import Foundation
import SwiftUI

class CounterAppViewModel: ObservableObject {
   
    @Published var Counter: Int = 0
    
    func incrementCounter(){
        Counter += 1
    }
    
    
}
