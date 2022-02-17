//
//  ContentView.swift
//  ImplantSelector
//
//  Created by Utkarsh Saboo on 2/10/22.
//

import SwiftUI

struct VolumeMute: View {
    @State var slidervalue: Double = 3
    var body: some View {

                VStack() {
                    Image("volume-1").resizable().aspectRatio(contentMode : .fit).offset(x: 0, y: -100)
                    
                    Text("Please select the volume").foregroundColor(.brown).fontWeight(.bold).font(.title)
                    
                    Text("\(Int(slidervalue))")
                    
                    Slider(value: $slidervalue, in: 1...10, step: 1.0)
                
                    Spacer()
                   Spacer()
                    
                    HStack
                    {
                        Button("MUTE", action: {}).background(.cyan)
                        Image("muteicon").resizable().frame(width: 30, height: 30)
                        
                    }
                    
                    Spacer()
                    
                }
                
        
        }
        
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VolumeMute()
    }
}

}
