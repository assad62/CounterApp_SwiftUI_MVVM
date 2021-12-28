//
//  ContentView.swift
//  CounterAppMVVM
//
//  Created by Home User 2 on 28/12/2021.
//

import SwiftUI

struct ContentViewBasic: View {
    @State var counter = 0
    var body: some View {
        ZStack {
            Text("\(counter)")
                .padding()
            FABView(counter: $counter)
           
        }
      
       
        
    }
}



struct FABView:View{
    @Binding var counter: Int

    var body: some View {
        VStack {
                Spacer()
                        HStack {
                            Spacer()
                            Button(action: {
                                
                                self.counter = self.counter + 1
                        
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewBasic()
    }
}
