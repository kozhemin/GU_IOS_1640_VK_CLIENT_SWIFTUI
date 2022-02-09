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
            ForEach(1 ..< 5) { i in
                PostView(postImageName: "post\(i)")
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Лента")
    }
}

private struct PostView: View {
    var postImageName: String
    var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading) {
                HStack {
                    postAvatar
                    postCaption
                    Spacer()
                }
                postText
            }
            .padding()

            postImage

            VStack {
                postActivity
            }
            .padding()
        }
        .background(Color.white)
    }
}

extension PostView {
    var postAvatar: some View {
        Image("user-avatar")
            .resizable()
            .frame(width: 48, height: 48)
            .modifier(CircleShadow(shadowColor: .gray, shadowRadius: 3))
    }

    var postCaption: some View {
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
    }

    var postText: some View {
        Text("Happy Sunday 👋 guys! Today I've redesigned Linkedin for you in SwiftUI. You will find the Source code of this project on my GitHub, go to the below link and download it.")
            .font(.subheadline)
            .foregroundColor(Color.black)
            .padding(.top)
    }

    var postImage: some View {
        Image(postImageName)
            .resizable()
            .scaledToFit()
    }

    var postActivity: some View {
        HStack(alignment: .center) {
            HStack(alignment: .center, spacing: 5) {
                
                Image("like-button")
                    .resizable()
                    .frame(width: 15, height: 15)
                
                Image("heart")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .modifier(SpringAnimation())
                
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
    }
}

struct VkNewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VkNewsFeedView()
        }
    }
}
