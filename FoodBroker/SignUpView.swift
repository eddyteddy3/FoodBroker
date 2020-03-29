//
//  SignUpView.swift
//  FoodBroker
//
//  Created by Moazzam Tahir on 29/03/2020.
//  Copyright © 2020 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""
    @State var isAgreed = false
    
    var body: some View {
        VStack {
            Text("Create Account")
                .font(Font.custom("AvenirNext-Bold", size: 35))
                .foregroundColor(.black)
                .padding(.trailing, 90)
                .padding(.top, 10)
                .padding(.bottom, 20)
            
            Text("Your Name")
            .font(Font.custom("ArialRoundedMTBold", size: 20))
            .foregroundColor(.black)
            .padding(.trailing, 230)
            
            HStack {
                TextField("First Name", text: $firstName)
                .font(Font.system(size: 20, weight: .light, design: .rounded))
                .background(Color(UIColor.white))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Last Name", text: $lastName)
                .font(Font.system(size: 20, weight: .light, design: .rounded))
                .background(Color(UIColor.white))
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding(.trailing, 40)
            .padding(.leading, 40)
            
            
            
            Spacer()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
