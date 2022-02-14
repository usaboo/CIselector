//
//  ContentView.swift
//  ImplantSelector
//
//  Created by Utkarsh Saboo on 2/10/22.
//

import SwiftUI

struct SecondView: View {
    @State private var action: Int? = 0
    var body: some View {
        NavigationView{
            VStack() {
                
                Image("naida-1").resizable().aspectRatio(contentMode : .fit)
                
                Spacer()
                
                Text("Choose Program").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(maxWidth: .infinity).background(.gray)
                    
                
                Spacer()
                Spacer()
                Spacer()
                
                HStack{
                    NavigationLink(destination:VolumeMute(), tag: 1, selection:$action){
                        Button("Auto-Sense", action: {self.action = 1}).frame(width:200.0, height: 50.0).foregroundColor(.black).background(.yellow)}
                    Image("3").resizable().frame(width: 50, height: 50)
                    
                }
                
                                        
            VStack()
            {
                Spacer()
                
                HStack
                {
                    NavigationLink(destination:VolumeMute(), tag: 1, selection:$action){
                        Button("Calm Situation", action: {self.action = 1}).frame(width:200.0, height: 50.0).foregroundColor(.black).background(.green)}
                Image("calm").resizable().frame(width: 50, height: 50)
                }
                
                Spacer()
                
                HStack{
                    NavigationLink(destination:VolumeMute(), tag: 1, selection:$action){
                        Button("Speech in Noise", action: {self.action = 1}).frame(width:200.0, height: 50.0).foregroundColor(.black).background(.blue)}
                Image("noise").resizable().frame(width: 50, height: 50)
                }
                
                Spacer()
                
                HStack{
                    NavigationLink(destination:VolumeMute(), tag: 1, selection:$action){
                        Button("Music", action: {self.action = 1}).frame(width:200.0, height: 50.0).foregroundColor(.black).background(.orange)}
                Image("headphones").resizable().frame(width: 50, height: 50)
                }
                
                Spacer()
                
                HStack{
                    NavigationLink(destination:VolumeMute(), tag: 1, selection:$action){
                        Button("Acoustic Phone", action: {self.action = 1}).frame(width:200.0, height: 50.0).foregroundColor(.black).background(.red)}
                Image("phone").resizable().frame(width: 50, height: 50)
                }
                
                Spacer()

            }.navigationTitle("").navigationBarTitleDisplayMode(.inline)
            }.offset(x: 0, y: -50)
        }
        }
    }




struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        SecondView()
        }
}

