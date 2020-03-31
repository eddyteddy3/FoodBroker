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
    @State var isSelected = false
    
    var body: some View {
        ZStack {
            Image("treeLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 500, height: 500, alignment: .center)
                .offset(x: 0, y: -300)
            
            VStack {
                Spacer()
                
                Text("Find My")
                    .font(Font.custom("Helvetica Neue", size: 30))
                    .foregroundColor(.black)
                    .padding(.trailing, 175)
                    .padding(.top, 80)
                
                Text("Community")
                    .font(Font.custom("Helvetica Neue", size: 30))
                    .foregroundColor(.black)
                    .fontWeight(.regular)
                    .padding(.trailing, 130)
                
                HStack {
                    VStack {
                        Image("donor")
                            .resizable()
                            .frame(width: 40, height: 40, alignment: .center)
                        
                        Text("Donor")
                    }.frame(width: 80, height: 80)
                    .background(Color(.systemGray))
                        .cornerRadius(15)
                        .shadow(radius: isSelected ? 0 : 30)
                        .onTapGesture {
                            self.isSelected.toggle()
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image("reciepient")
                            .resizable()
                            .frame(width: 40, height: 40, alignment: .center)
                        
                        Text("Reciepient")
                            .fontWeight(.light)
                    }.frame(width: 80, height: 80)
                    .background(Color(.systemGray))
                    .cornerRadius(15)
                    .shadow(radius: isSelected ? 30 : 0)
                        .onTapGesture {
                            self.isSelected.toggle()
                    }
                    
                    Spacer()
                }.padding(.leading, 80)
                
                TextField("Enter Zip Code", text: $textFieldText)
                    .foregroundColor(.black)
                    .font(Font.system(size: 26, weight: .light, design: .rounded))
                    .background(Color(UIColor.white))
                    .padding(.bottom, 20)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.leading, 80)
                    .padding(.trailing, 80)
                    .keyboardType(.decimalPad)
                
                Button("Search In My Area") {
                    
                }.frame(width: 315, height: 50)
                    .background(Color("ButtonColor"))
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    .shadow(color: Color(UIColor.black).opacity(0.5), radius: 4, x: 0, y: 4)
                
                
                Spacer()
                
                Button("Start Giving") {
                    
                }.frame(width: 315, height: 50)
                    .background(Color("ButtonColor"))
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    .padding(.bottom, 50)
                    .shadow(color: Color(UIColor.black).opacity(0.5), radius: 4, x: 0, y: 4)
                
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
