//
//  ContentView.swift
//  FoodBroker
//
//  Created by Moazzam Tahir on 29/03/2020.
//  Copyright © 2020 Moazzam Tahir. All rights reserved.
//

import SwiftUI
import Combine
import Foundation

struct ContentView: View {
    @State var textFieldText = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Find My")
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.trailing, 190)
            
            Text("Community")
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.trailing, 130)
                .padding(.bottom, 30)
            
            
            TextField("Enter Zip Code", text: $textFieldText)
                .font(Font.system(size: 28, weight: .light, design: .rounded))
                .background(Color(UIColor.white))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .cornerRadius(50)
                .keyboardType(.decimalPad)
            
            Button("Search In My Area") {
                
            }.frame(width: 315, height: 50)
                .background(Color("ButtonColor"))
                .foregroundColor(.white)
                .cornerRadius(30)
            
            Spacer()
            
            Button("Start Giving") {
                
            }.frame(width: 315, height: 50)
                .background(Color("ButtonColor"))
                .foregroundColor(.white)
                .cornerRadius(30)
                .padding(.bottom, 50)
            
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
