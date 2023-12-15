//
//  ContentView.swift
//  Fx_SwiftUI
//
//  Created by MACBOOK on 10/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State var number: Int = 10
    
    var body: some View {
        VStack(alignment: .center) {
            Button(action: {
                number += 1
            }) {
                Image(systemName: "arrowtriangle.up.fill")
                    .resizable()
                    .frame(width: 50, height: 50.0)
                    .foregroundColor(.red)
            }
            .frame(width: 50.0, height: 50.0)
            Text("\(number)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
            Button(action: {
                number -= 1
            }) {
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
            }
            .frame(width: 50.0, height: 50.0)
        }
//        .frame(width: 50.0, height: 200.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(/*@START_MENU_TOKEN@*/"iPhone 11"/*@END_MENU_TOKEN@*/)
    }
}
