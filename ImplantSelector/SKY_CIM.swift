//
//  ContentView.swift
//  ImplantSelector
//
//  Created by Utkarsh Saboo on 2/10/22.
//

import SwiftUI

struct Skyview: View {
    @State private var action: Int? = 0
    var body: some View {
            VStack() {
                
                Image("sky-1").resizable().aspectRatio(contentMode : .fit).offset(x: 0, y: 35)
                
                Spacer()
                
                Text("Choose Program").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(maxWidth: .infinity).background(.gray)
                    
                
                Spacer()
                
                HStack{
                    NavigationLink(destination:Volume(), tag: 1, selection:$action){
                        Button("Auto-Sense", action: {self.action = 1}).frame(width:200.0, height: 50.0).foregroundColor(.black).background(.yellow)}
                    Image("3").resizable().frame(width: 50, height: 50)
                    
                }
                
                
                Spacer()
                
                HStack
                {
                    NavigationLink(destination:Volume(), tag: 1, selection:$action){
                        Button("Calm Situation", action: {self.action = 1}).frame(width:200.0, height: 50.0).foregroundColor(.black).background(.green)}
                Image("calm").resizable().frame(width: 50, height: 50)
                }
                
                Spacer()
                
                HStack{
                    NavigationLink(destination:Volume(), tag: 1, selection:$action){
                        Button("Comfort in Noise", action: {self.action = 1}).frame(width:200.0, height: 50.0).foregroundColor(.black).background(.blue)}
                Image("comfort").resizable().frame(width: 50, height: 50)
                }
                
                Spacer()
            .navigationTitle("").navigationBarTitleDisplayMode(.inline)
            }.offset(x: 0, y: -75)
        }
    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Skyview()
        }
}

