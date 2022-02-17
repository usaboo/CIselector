//
//  ContentView.swift
//  ImplantSelector
//
//  Created by Utkarsh Saboo on 2/10/22.
//

import SwiftUI

struct Volume: View {
    @State var slidervalue: Double = 3
    var body: some View {
        NavigationView{
                VStack() {
                    Image("volume-1").resizable().aspectRatio(contentMode : .fit).offset(x: 0, y: -100)
                    
                    Text("Please select the volume").foregroundColor(.brown).fontWeight(.bold).font(.title)
                    
                    Text("\(Int(slidervalue))")
                    
                    Slider(value: $slidervalue, in: 1...10, step: 1.0)
                
                    Spacer()
                    
                }
                
        }
        }
        
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Volume()
    }
}

}
