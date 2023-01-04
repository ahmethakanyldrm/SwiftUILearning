//
//  ContentView.swift
//  ProfileApp
//
//  Created by AHMET HAKAN YILDIRIM on 4.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
                Spacer()
                VStack(alignment: .center, spacing: 20) {
                    Image(systemName: "person.circle").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    Text("AHMET HAKAN YILDIRIM").font(.system(size: 30)).bold().font(.system(.largeTitle))
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Text("JR iOS DEVELOPER").foregroundColor(.white).bold().font(.system(size: 20))
                        .font(.body)

                    HStack(spacing: 40) {
                        Image(systemName: "heart.circle").resizable().aspectRatio(contentMode: .fit)

                        Image(systemName: "network").resizable().aspectRatio(contentMode: .fit)

                        Image(systemName: "message.circle").resizable().aspectRatio(contentMode: .fit)

                        Image(systemName: "phone.circle").resizable().aspectRatio(contentMode: .fit)
                    }
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50, alignment: .center)
                    .shadow(color: .pink, radius: 5, y: 8)
                }
                Spacer()

                VStack(alignment: .center, spacing: 30) {
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 8, y: 8)
                        .overlay(Text("Follow")
                            .fontWeight(.bold)
                            .foregroundColor(.pink)
                            .font(.system(size: 25))
                        )
                    HStack(alignment: .center, spacing: 60) {
                        VStack {
                            Text("222").font(.title).foregroundColor(.pink)

                            Text("Appreciations").font(.caption).foregroundColor(.gray)
                        }

                        VStack {
                            Text("222").font(.title).foregroundColor(.pink)

                            Text("Appreciations").font(.caption).foregroundColor(.gray)
                        }

                        VStack {
                            Text("222").font(.title).foregroundColor(.pink)

                            Text("Appreciations").font(.caption).foregroundColor(.gray)
                        }
                    }

                    Text("About you")
                        .font(.system(size: 40))
                        .font(.system(.caption))

                    Text("I am an iOS Developer. Welcome to the series of iOS project. Let's dive deeper and create some more exciting projects")
                        .foregroundColor(.black)
                        .font(.system(.body))
                        .multilineTextAlignment(.center)
                        .lineLimit(4)
                        .opacity(0.7)
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
