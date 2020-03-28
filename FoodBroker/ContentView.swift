//
//  ContentView.swift
//  FoodBroker
//
//  Created by Moazzam Tahir on 29/03/2020.
//  Copyright © 2020 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Find My")
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.trailing,230)
            
            Text("Community")
            .foregroundColor(.white)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.trailing,180)
            
            
                
        }.background(Image("background")
        .scaledToFill()
        .edgesIgnoringSafeArea(.all)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
