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
    @State var pickerIndex = 0
    @State var birthDate = Date()
    
    let pickerItems = ["Donor", "Recipient"]
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    var strengths = ["Mild", "Medium", "Mature"]
    
    @State private var selectedStrength = 0
    
    var body: some View {
        VStack {
            Text("Create Account")
                .font(Font.custom("AvenirNext-Bold", size: 35))
                .foregroundColor(.black)
                .padding(.trailing, 90)
                .padding(.top, 10)
                .padding(.bottom, 20)
            
            VStack {
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
            }
            
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
                Text("Residential Address")
                    .font(Font.custom("ArialRoundedMTBold", size: 20))
                    .foregroundColor(.black)
                    .padding(.trailing, 150)
                
                HStack {
                    TextField("1245 Walls Way", text: $address)
                        .font(Font.system(size: 20, weight: .light, design: .rounded))
                        .background(Color(UIColor.white))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding(.trailing, 40)
                    .padding(.leading, 40)
            }.padding(.top, 30)
            
            VStack {
                HStack {
                    Text("Donor/Recipient")
                        .font(Font.custom("ArialRoundedMTBold", size: 15))
                        .foregroundColor(.black)
                        .padding(.trailing, 50)
                    
                    
                    Text("Birthday")
                        .font(Font.custom("ArialRoundedMTBold", size: 15))
                        .foregroundColor(.black)
                        .padding(.trailing, 100)
                }
                
                HStack {
                    Picker(selection: $pickerIndex, label: Text("Donor")) {
                        ForEach(0..<pickerItems.count) {
                            Text(self.pickerItems[$0])
                        }
                    }.frame(width: 20, height: 20)
                        .padding(.trailing, 50)
                    
                    HStack(spacing: 4.0) {
                        TextField("DD", text: $firstName)
                            .font(Font.system(size: 15, weight: .light, design: .rounded))
                            .background(Color(UIColor.white))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 50)
                        
                        TextField("MM", text: $lastName)
                            .font(Font.system(size: 15, weight: .light, design: .rounded))
                            .background(Color(UIColor.white))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 50)
                        
                        TextField("YYYY", text: $lastName)
                            .font(Font.system(size: 15, weight: .light, design: .rounded))
                            .background(Color(UIColor.white))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 70)
                        
                    }
                    .padding(.leading, 60)
                }
                
            }.padding(.top, 30)
            
            VStack {
                Text("Password")
                    .font(Font.custom("ArialRoundedMTBold", size: 20))
                    .foregroundColor(.black)
                    .padding(.trailing, 235)
                
                HStack {
                    TextField("*******", text: $email)
                        .font(Font.system(size: 20, weight: .light, design: .rounded))
                        .background(Color(UIColor.white))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding(.trailing, 40)
                    .padding(.leading, 40)
            }.padding(.top, 50)
            
            
            Button(action: {
                //1. Save state
                self.isAgreed = !self.isAgreed
                print("State : \(self.isAgreed)")
            }) {
                HStack(alignment: .top, spacing: 10) {
                    
                    //2. Will update according to state
                    
                    Image(systemName: self.isAgreed ? "checkmark.square.fill" : "square.fill")
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
            //.foregroundColor(Color.white)
            
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
                Text("Already have an account?")
                    .foregroundColor(.gray)
//                Text("Terms & Conditions")
//                    .foregroundColor(.black)
                Button(action: {
                    //
                }) {
                    Text("Login to Account")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                }
            }.padding(.top, 10)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
