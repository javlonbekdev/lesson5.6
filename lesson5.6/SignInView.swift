//
//  ContentView.swift
//  lesson5.6
//
//  Created by Javlonbek on 24/01/22.
//

import SwiftUI

struct SignInView: View {
    @State private var isModal = false
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Image("myPhoto")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(50)
                TextField("User ID", text: $email)
                    .frame(height: 45).padding(.leading, 10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(22)
                SecureField("User PW", text: $password)
                    .frame(height: 45).padding(.leading, 10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(22)
                Button {
                    
                } label: {
                    HStack{
                        Spacer()
                        Text("Sign In")
                            .foregroundColor(.white)
                        Spacer()
                    }
                }.frame(height: 45)
                    .background(.red)
                    .cornerRadius(22)
                Spacer()
                HStack{
                    Text("Don't have an account?")
                        NavigationLink(destination: SignUpView()) {
                            Text("Sign Up")
                                .foregroundColor(.black)
                                .font(.system(size: 18))
                        }
                }
            }.padding()
                .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
