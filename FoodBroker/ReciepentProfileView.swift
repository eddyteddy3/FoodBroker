//
//  ReciepentProfileView.swift
//  FoodBroker
//
//  Created by Moazzam Tahir on 30/03/2020.
//  Copyright © 2020 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct ReciepentProfileView: View {
    @State var userName = "Jaimie McAlister, 21"
    @State var address = "XYZ Neighborhood SanFransico CA"
    @State var family  = "2 Kids 1 Dog 1 Cat"
    @State var description = """
                            I have 2 kids who are in desperate need the grocery store near me just ran out of toilet paper and we don’t have sanitizer
                            """
    @State var isSelected1 = true
    @State var isSelected2 = false
    @State var isSelected3 = false
    @State var isSelected4 = true
    @State var isSelected5 = false
    @State var isSelected6 = true
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Image("user1")
                    .resizable()
                    .frame(width: 120, height: 120, alignment: .center)
                
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(userName)
                        .font(Font.custom("GillSans", size: 20))
                        .fontWeight(.semibold)
                    
                    Text(address)
                        .font(Font.custom("GillSans", size: 20))
                        .lineSpacing(1)
                        .lineLimit(2)
                        .padding(1)
                    
                    Text(family)
                        .font(Font.custom("GillSans", size: 20))
                        .fontWeight(.semibold)
                    
                    Button(action: {
                        //
                    }) {
                        Text("View My Photos")
                            .foregroundColor(.red)
                    }
                }
                
            }.padding()
            
            HStack {
                Button(action: {
                    //action
                }) {
                    Text("View Orders")
                        .foregroundColor(.white)
                }
                .frame(width: 150, height: 50)
                .background(Color("PinkButton"))
                .cornerRadius(8)
                .shadow(color: Color(UIColor.black).opacity(0.5), radius: 4, x: 0, y: 4)
                
                Spacer()
                
                Button(action: {
                    //action here
                }) {
                    Text("Take a Selfie")
                        .foregroundColor(.white)
                }.frame(width: 150, height: 50)
                    .background(Color("PinkButton"))
                    .cornerRadius(8)
                    .shadow(color: Color(UIColor.black).opacity(0.5), radius: 4, x: 0, y: 4)
                
            }.padding(.leading, 30)
                .padding(.trailing, 30)
            
            Text(description)
                .lineLimit(3)
                .padding()
                .padding(.top, 10)
            
            HStack {
                Spacer()
                
                Button(action: {
                    //action here
                }) {
                    Text("Edit")
                        .foregroundColor(.white)
                }.frame(width: 100, height: 30)
                    .background(Color("PinkButton"))
                    .cornerRadius(15)
                    .shadow(color: Color(UIColor.black).opacity(0.5), radius: 2, x: 0, y: 2)
            }.padding()
            
            HStack {
                Text("Pick The Items You Need")
                    .font(Font.custom("GillSans", size: 15))
                Spacer()
            }.padding(.leading, 30)
            
            VStack {
                HStack {
                    VStack {
                        Image("Toilet Paper")
                            .resizable()
                            .frame(width: 80, height: 80, alignment: .center)
                        Text("Toiler Paper")
                        
                        Button(action: {
                            //
                        }) {
                            VStack {
                                Image(systemName: self.isSelected1 ? "checkmark.square.fill" : "square.fill")
                                    .accentColor(.gray)
                                    .frame(width: 30, height: 30, alignment: .center)
                            }
                        }
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image("Diapers")
                            .resizable()
                            .frame(width: 80, height: 80, alignment: .center)
                        
                        Text("Diapers")
                        
                        Button(action: {
                            //
                        }) {
                            VStack {
                                Image(systemName: self.isSelected2 ? "checkmark.square.fill" : "square.fill")
                                    .accentColor(.gray)
                                    .frame(width: 30, height: 30, alignment: .center)
                            }
                        }
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image("Cleaners")
                            .resizable()
                            .frame(width: 80, height: 80, alignment: .center)
                        
                        Text("Cleaners")
                        
                        Button(action: {
                            //
                        }) {
                            VStack {
                                Image(systemName: self.isSelected3 ? "checkmark.square.fill" : "square.fill")
                                    .accentColor(.gray)
                                    .frame(width: 30, height: 30, alignment: .center)
                            }
                        }
                    }
                    
                }
                
                HStack {
                    VStack {
                        Image("Sanitizer")
                            .resizable()
                            .frame(width: 80, height: 80, alignment: .center)
                        
                        Text("Sanitizer")
                        
                        Button(action: {
                            //
                        }) {
                            VStack {
                                Image(systemName: self.isSelected4 ? "checkmark.square.fill" : "square.fill")
                                    .frame(width: 30, height: 30, alignment: .center)
                                    .accentColor(.gray)
                                    
                            }
                        }
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image("Soap")
                            .resizable()
                            .frame(width: 80, height: 80, alignment: .center)
                        
                        Text("Soap")
                        
                        Button(action: {
                            //
                        }) {
                            VStack {
                                Image(systemName: self.isSelected5 ? "checkmark.square.fill" : "square.fill")
                                    .accentColor(.gray)
                                    .frame(width: 30, height: 30, alignment: .center)
                            }
                        }
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image("Oxygen")
                            .resizable()
                            .frame(width: 80, height: 80, alignment: .center)
                        
                        Text("Oxygen")
                        
                        Button(action: {
                            //
                        }) {
                            VStack {
                                Image(systemName: self.isSelected6 ? "checkmark.square.fill" : "square.fill")
                                    .accentColor(.gray)
                                    .frame(width: 30, height: 30, alignment: .center)
                            }
                        }
                    }
                }
            }.padding()
            
            Spacer()
            
            Button(action: {
                //action
            }) {
                Text("Search for Donors In Your Area")
                    .foregroundColor(.white)
            }
            .frame(width: 350, height: 50)
            .background(Color("ButtonColor"))
            .cornerRadius(25)
            .shadow(color: Color(UIColor.black).opacity(0.5), radius: 4, x: 0, y: 4)
        }
    }
}

struct ReciepentProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ReciepentProfileView()
    }
}
