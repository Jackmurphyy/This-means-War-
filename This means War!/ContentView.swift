//
//  ContentView.swift
//  This means War!
//
//  Created by Jack Murphy on 9/28/20.
//

import SwiftUI

    struct ContentView: View {
        
        @State private var randNum1 = 4
        @State private var randNum2 = 5
        
        @State private var score1 = 0
        @State private var score2 = 0
        
        @State var showAlert = false
         var body: some View {
        
       
        ZStack {
            
            Image("ground")
                .resizable().ignoresSafeArea(.all)
        
            
            VStack {
                
                Spacer()
                
            Image("logo")
                
                Spacer()
                
                HStack {
                    
                Image("card" + String(randNum1))
                    
                Image("card" + String(randNum2))
                    
                
                }
                
               Spacer()
                
               Button(action: {
                    
            
                self.randNum1 = Int.random(in: 2...14)
                self.randNum2 = Int.random(in: 2...14)
                    
                if self.randNum1 > self.randNum2 {
                    score1 += 1
                }
                else if self.randNum2 > self.randNum1 {
                    score2 += 1
                }
                }) {
                    
                    
                Image("dealbutton")
                    .padding(.all, 40)
                
                
                }
                }
                
                Spacer()
                
                HStack {
                    VStack {
                    Text("Player")
                        .bold()
                        .padding(.bottom, 10)
                    Text(String(score1))
                    }.padding(.leading, 20).foregroundColor(.white)
            
                    Spacer()
                    
                    VStack {
                    Text("CPU")
                        .bold()
                        .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Text(String(score2))
                    }.padding(.trailing, 20).foregroundColor(.white)
                    
                }
                Spacer()
            }
            
        }
        
        
        
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
