//
//  ContentView.swift
//  vk
//
//  Created by Егор Кожемин on 21.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VkIcon()
                .padding(.top, 150)
            
            VStack {
                VkInputLoginField()
                VkInputPasswordField()
                    .padding(.top)
            }
            .padding(.top, 50)
            .padding([.leading, .horizontal])
            
            VkButtonLogin()
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

struct VkInputLoginField: View {
    @State var loginText = ""
    
    var body: some View {
        TextField("Email или телефон", text: $loginText)
            .textFieldStyle(.roundedBorder)
    }
}

struct VkInputPasswordField: View {
    @State var passwordText = ""
    
    var body: some View {
        TextField("Пароль", text: $passwordText)
            .textFieldStyle(.roundedBorder)
    }
}

struct VkButtonLogin: View {
    var body: some View {
        Button {
            print("Button tapped!")
        } label: {
            Text("Войти")
                .font(.headline)
                .bold()
        }
        .frame(width: 250, alignment: .center)
        .padding(.all, 8)
        .background(Color.white)
        .foregroundColor(.blue)
        .clipShape(Capsule())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
