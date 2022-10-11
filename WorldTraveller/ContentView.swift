//
//  ContentView.swift
//  WorldTraveller
//
//  Created by Onat Duman on 10.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var FValue: String = "56"
    let formatFahrenheit: NumberFormatter = {
        let formatFahrenheit = NumberFormatter()
        formatFahrenheit.numberStyle = .decimal
        formatFahrenheit.minimumFractionDigits = 0
        formatFahrenheit.maximumFractionDigits = 2
        return formatFahrenheit
    }()
    
    func convert() -> String {
        if let tmp = Double(FValue){
            let Celcius = (tmp - 32)*(5/9)
            return  formatFahrenheit.string(from: NSNumber(value: Celcius)) ?? "???"
        }else{
            return "???"
        }
    }
    
    var body: some View {
        VStack {
            
            
            TextField("value", text: $FValue)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
                .multilineTextAlignment(.center)
            Text("Fahrenheit")
            Text("equals to")
            Text(convert())
            Text("degree Celcius")
            

        }.font(.largeTitle)
            .foregroundColor(Color.green)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
