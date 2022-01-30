//
//  VkNewsFeedView.swift
//  vk
//
//  Created by Егор Кожемин on 30.01.2022.
//

import SwiftUI

struct VkNewsFeedView: View {
    var body: some View {
        List {
            ForEach (1 ..< 5) { i in
                PostView(postImageName: "post\(i)")
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Лента")
    }
}

private struct PostView: View {
    var postImageName: String
    var buttonAction: () -> () = {}
    var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading) {
                HStack {
                    Image("user-avatar")
                        .resizable()
                        .frame(width: 48, height: 48)
                        .modifier(CircleShadow(shadowColor: .gray, shadowRadius: 3))
                    
                    VStack(alignment: .leading) {
                        Text("Milan Goti")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        
                        Text("iOS Developr | SwiftUI | Swift | Flutter")
                            .font(.caption)
                            .foregroundColor(.black)
                        HStack {
                            Text("2d •")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            Image(systemName: "globe.americas.fill")
                                .foregroundColor(.black)
                                .offset(x: -5, y: 0)
                        }
                        
                    }
                    Spacer()
                    Button(action: {
                        self.buttonAction()
                    }, label: {
                        Image(systemName: "ellipsis")
                            .font(.headline)
                            .foregroundColor(Color.black)
                    })
                }
                Text("Happy Sunday 👋 guys! Today I've redesigned Linkedin for you in SwiftUI. You will find the Source code of this project on my GitHub, go to the below link and download it.")
                    .font(.subheadline)
                    .foregroundColor(Color.black)
                    .padding(.top)
            }
            .padding()
            Image(postImageName)
                .resizable()
                .scaledToFit()
            VStack {
                HStack(alignment: .center) {
                    HStack(alignment: .center, spacing: 5){
                        Image("like-button")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Image("heart")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text("101")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    Spacer()
                    
                    Text("81 Comment")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
                
            }.padding()
            
        }
        .background(Color.white)
    }
}

struct VkNewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VkNewsFeedView()
        }
    }
}
