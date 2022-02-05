//
//  LandingView.swift
//  chameleon
//
//  Created by Dare on 2/1/22.
//

import SwiftUI

struct LandingView: View {

    @Binding var isAuth: Bool
    @State private var showLoginView = false
    
    var body: some View {
        ZStack {
            if showLoginView {
                LoginView(isAuth: $isAuth)
            } else {
                Color.red.ignoresSafeArea()
                VStack {
                    Text("VEEV Checkins")
                        .font(.system(size: 32.0, weight: .semibold, design: .default))
                        .foregroundColor(.white)
                        .padding()
                    Button {
                        withAnimation {
                            showLoginView.toggle()
                        }
                    } label: {
                        Text("Enter")
                            .font(.system(size: 24.0))
                            .fontWeight(.medium)
                    }
                    .frame(width: 150.0, height: 30.0, alignment: .center)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(5)
                }
            }
        }
    }
}

