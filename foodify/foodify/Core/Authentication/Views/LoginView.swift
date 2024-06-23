//
//  LoginView.swift
//  foodify
//
//  Created by Bora Balos on 23/06/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("home-bg") //
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    Image("foodify-app-icon-white")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .padding()
                    VStack {
                        TextField("Enter your email", text: $email)
                        
                        SecureField("Enter your password", text: $password)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.black.opacity(0.6), Color.black.opacity(0.25), Color.clear]), startPoint: .bottom, endPoint: .top)
                )
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    LoginView()
}