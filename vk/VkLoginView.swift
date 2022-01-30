//
//  ContentView.swift
//  vk
//
//  Created by Егор Кожемин on 21.01.2022.
//

import SwiftUI

struct VkLoginView: View {
    @Binding var isLogin: Bool
    @State private var loginText = ""
    @State private var passwordText = ""
    @State private var showingAlert = false
    
    private func checkLogin() -> Bool {
        if loginText == "Admin" && passwordText == "admin" {
            return true
        }
        return false
    }
    
    var body: some View {
        
        ScrollView{
            VkIcon()
                .padding(.top, 150)
            
            VStack {
                loginField
                passwordField
                    .padding(.top)
            }
            .padding(.top, 50)
            .padding([.leading, .horizontal])
            
            buttonLogin
                .padding(.top, 30)
            Spacer()
        }
        .background(Color("vkBgColor"))
        .ignoresSafeArea()
    }
}

struct VkIcon: View {
    var body: some View {
        HStack {
            Spacer()
            Image("vk-icon")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100.0, height: 100.0, alignment: .center)
            Spacer()
        }
    }
}

extension VkLoginView {
    var loginField: some View {
        TextField("Email или телефон", text: $loginText)
            .textFieldStyle(.roundedBorder)
            .ignoresSafeArea(.keyboard)
    }
}

extension VkLoginView {
    var passwordField: some View {
        SecureField("Пароль", text: $passwordText)
            .textFieldStyle(.roundedBorder)
            .ignoresSafeArea(.keyboard)
    }
}

extension VkLoginView {
    var buttonLogin: some View {
        Button {
            if checkLogin() {
                isLogin = true
            } else {
              showingAlert = true
            }
        } label: {
            Text("Войти")
                .font(.headline)
                .bold()
        }
        .buttonStyle(VkButtonStyle())
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Error message"), message: Text("Login or password incorrect"),
                  dismissButton: .default(Text("Ok!")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VkLoginView(isLogin: .constant(true))
    }
}
