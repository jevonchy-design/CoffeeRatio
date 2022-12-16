//
//  ContentView.swift
//  CoffeeRatio
//
//  Created by JĒVONCHY on 12/16/22.
//

import SwiftUI

struct ContentView: View {

    @State var coffee: String = ""
    @State var waterRatio: String = ""


    var body: some View {
        ScrollView {
            VStack {
                
                CoffeeInput(amount: $coffee)

                VStack {
                    Spacer()
                        .frame(height: CGFloat(20))

                    Divider()
                        .frame(width: CGFloat(267))

                    Spacer()
                        .frame(height: CGFloat(20))
                }


                WaterInput(amount: $waterRatio)

                VStack {
                    Spacer()
                        .frame(height: CGFloat(20))

                    Divider()
                        .frame(width: CGFloat(267))

                    Spacer()
                        .frame(height: CGFloat(20))
                }

                WaterDisplay(
                    waterRatio: $coffee,
                    coffee: $waterRatio
                )

                Spacer()
                    .frame(height: CGFloat(100))

                TimerView()

            }.padding(80)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
