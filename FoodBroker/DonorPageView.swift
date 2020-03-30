//
//  DonorPageView.swift
//  FoodBroker
//
//  Created by Moazzam Tahir on 29/03/2020.
//  Copyright © 2020 Moazzam Tahir. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct CollectionView: View {
    @State var imageName: String
    @State var viewLabel: String
    
    var body: some View {
        VStack {
            Image(self.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(self.viewLabel)
                .font(Font.custom("GillSans", size: 15))
        }
    }
}

struct UserList: View {
    @State var user: String
    @State var itemImage: [String]
    @State var userName: String
    
    var body: some View {
        HStack {
            Image(user)
                .resizable()
                .frame(width: 70, height: 70, alignment: .center)
            
            Spacer()
            
            VStack {
                Text(userName)
                HStack {
                    ForEach(0..<itemImage.count) { item in
                        Image(self.itemImage[item])
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                    }
                }
            }
            
            Button(action: {
                //1. Save state
            }) {
                Text("Create Account")
                    .font(Font.custom("ArialRoundedMTBold", size: 10))
                    .foregroundColor(.white)
            }.frame(width: 120, height: 40)
                .background(Color("ButtonColor"))
                .cornerRadius(30)
                .shadow(color: Color(UIColor.black).opacity(0.5), radius: 4, x: 0, y: 4)
            .padding()
        }.padding()
    }
}

struct DonorPageView: View {
    @State var search = ""
    
    let itemList = ["Toilet Paper", "Sanitizer", "Masks", "Cleaners", "Oxygen", "Diapers"]
    let userList = ["user1", "user2", "user3", "user2", "user3"]
    let itemDictionary = ["user1": "Toilet Paper"]
    
    var body: some View {
        VStack {
            
            HStack {
                Button(action: {
                    //
                }) {
                    Image(systemName: "text.justify")
                        .accentColor(.black)
                }
                
                Spacer()
                
                TextField("Search Zipcode", text: $search)
                    .font(Font.system(size: 20, weight: .light, design: .rounded))
                    .background(Color(UIColor.white))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            
            MapView()
                .frame(width: UIScreen.main.bounds.width, height: 200)
            
            HStack {
                ForEach(0..<itemList.count) { (item) in
                    CollectionView(imageName: self.itemList[item], viewLabel: self.itemList[item])
                }.padding(2)
            }
            
            HStack {
                Text("Don't have an account?")
                    .foregroundColor(.black)
                //                Text("Terms & Conditions")
                //                    .foregroundColor(.black)
                
                Spacer()
                
                Text("Filter by Sanitizer")
                    .foregroundColor(.gray)
            }.padding(.all, 15)
            
            
            VStack {
                List {
                    ForEach(0..<userList.count) { user in
                        UserList(user: self.userList[user], itemImage: ["Sanitizer", "Oxygen"], userName: "Sarah Johnson")
                    }
                }
            }
            
            Spacer()
            
        }
    }
}

struct DonorPageView_Previews: PreviewProvider {
    static var previews: some View {
        DonorPageView()
    }
}
