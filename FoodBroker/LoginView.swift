//
//  LoginView.swift
//  FoodBroker
//
//  Created by Moazzam Tahir on 29/03/2020.
//  Copyright © 2020 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State var passwordRememberDidSelect = false
    
    var body: some View {
        VStack {
            Text("Login Account")
                .font(Font.custom("AvenirNext-Bold", size: 35))
                .foregroundColor(.black)
                .padding(.trailing, 90)
                .padding(.top, 10)
                .padding(.bottom, 20)
            
            VStack {
                Text("Email Address")
                    .font(Font.custom("ArialRoundedMTBold", size: 20))
                    .foregroundColor(.black)
                    .padding(.trailing, 200)
                
                HStack {
                    TextField("example@mail.com", text: $email)
                        .font(Font.system(size: 20, weight: .light, design: .rounded))
                        .background(Color(UIColor.white))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding(.trailing, 40)
                    .padding(.leading, 40)
            }.padding(.top, 30)
            
            VStack {
                Text("Password")
                    .font(Font.custom("ArialRoundedMTBold", size: 20))
                    .foregroundColor(.black)
                    .padding(.trailing, 240)
                
                HStack {
                    TextField("******", text: $password)
                        .font(Font.system(size: 20, weight: .light, design: .rounded))
                        .background(Color(UIColor.white))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding(.trailing, 40)
                    .padding(.leading, 40)
            }.padding(.top, 30)
            
            HStack {
                Button(action: {
                    self.isAgreed = !self.passwordRememberDidSelect
                }) {
                    HStack(alignment: .top, spacing: 10) {
                        
                        Image(systemName: self.passwordRememberDidSelect ? "checkmark.square.fill" : "square.fill")
                            .accentColor(.gray)
                            .frame(width:20, height:20, alignment: .center)
                        
                        HStack {
                            Text("Agree with")
                                .foregroundColor(.gray)
                            Text("Terms & Conditions")
                                .foregroundColor(.black)
                        }
                        
                    }
                }.padding(.trailing, 60)
            }
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
