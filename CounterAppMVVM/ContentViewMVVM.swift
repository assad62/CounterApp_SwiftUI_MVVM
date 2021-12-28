//
//  CounterAppMVVM.swift
//  CounterAppMVVM
//
//  Created by Home User 2 on 28/12/2021.
//

import SwiftUI

struct ContentViewMVVM: View {
    @ObservedObject var viewModel = CounterAppViewModel()
    var body: some View {
        ZStack {
            Text("\(viewModel.Counter)")
                .padding()
            
            FABViewMVVM(
                onFabClicked:{
                    viewModel.incrementCounter()
               }
            )
           
        }
      
       
        
    }
}



struct FABViewMVVM:View{
    var onFabClicked: () -> Void
    var body: some View {
        VStack {
                Spacer()
                        HStack {
                            Spacer()
                            Button(action: {
                                
                                self.onFabClicked()
                        
                            }, label: {
                                Text("+")
                                .font(.system(.largeTitle))
                                .frame(width: 57, height: 50)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 7)
                            })
                            .background(Color.blue)
                            .cornerRadius(38.5)
                            .padding()
                            .shadow(color: Color.black.opacity(0.3),
                                    radius: 3,
                                    x: 3,
                                    y: 3)
                        }
        }
    }
    
}


struct CounterAppMVVM_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewMVVM()
    }
}
