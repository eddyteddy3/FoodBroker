//
//  SignUpView.swift
//  FoodBroker
//
//  Created by Moazzam Tahir on 29/03/2020.
//  Copyright © 2020 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack {
            Text("Create Account")
                .font(Font.custom("AvenirNext-Heavy", size: 30))
                .foregroundColor(.black)
                .padding(.trailing, 100)
                .padding(.top, 10)
            Spacer()
            
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
