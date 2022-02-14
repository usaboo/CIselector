//
//  ContentView.swift
//  ImplantSelector
//
//  Created by Utkarsh Saboo on 2/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var action: Int? = 0
    var body: some View {
        NavigationView{
                VStack() {
                    
                    Image("AB-Logo").resizable().aspectRatio(contentMode : .fit)
                    Spacer()
                    
                    Text("Please select your device").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(maxWidth: .infinity,maxHeight: 100).background(.black).foregroundColor(.white)
                        
                    
                    Spacer()
                    
                    NavigationLink(destination:SecondView(), tag: 1, selection:$action)
                    {
                        Button("Naida CI M", action: {self.action = 1}).frame(width:200.0, height: 100.0).foregroundColor(.black).background(.gray)
                        
                    }
                    
                    
                    
                    Spacer()
                   
                    NavigationLink(destination: Skyview(), tag: 2,selection: $action)
                    {
                        Button("SKY CI M", action: {self.action = 2}).frame(width:200.0, height: 100.0).foregroundColor(.black).background(.gray)
                    
                    }
                    
                    Spacer()
                }.navigationTitle("").navigationBarTitleDisplayMode(.inline)
            
                
        }
        }
        
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
