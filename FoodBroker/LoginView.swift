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
                    self.passwordRememberDidSelect.toggle()
                }) {
                    HStack() {
                        Image(systemName: self.passwordRememberDidSelect ? "checkmark.square.fill" : "square.fill")
                            .accentColor(.gray)
                            .frame(width:20, height:20, alignment: .center)
                        
                        Text("Remeber Password")
                            .foregroundColor(.gray)
                    }
                }.padding(.leading, 20)
                
                Spacer()
                
                Button(action: {
                    //
                }) {
                    Text("Forgot Password?")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                }.padding(.trailing, 20)
                
            }.padding(.top, 10)
            
            Spacer()
            
            Button(action: {
                //1. Save state
            }) {
                Text("Create Account")
                    .font(Font.custom("ArialRoundedMTBold", size: 20))
                    .foregroundColor(.white)
            }.frame(width: 315, height: 50)
                .background(Color("ButtonColor"))
                .cornerRadius(30)
                .shadow(color: Color(UIColor.black).opacity(0.5), radius: 4, x: 0, y: 4)
            
            HStack {
                Text("Don't have an account?")
                    .foregroundColor(.gray)
                //                Text("Terms & Conditions")
                //                    .foregroundColor(.black)
                Button(action: {
                    //
                }) {
                    Text("Create Account")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                }
            }.padding(.top, 15)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
