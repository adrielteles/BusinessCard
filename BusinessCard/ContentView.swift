//
//  ContentView.swift
//  BusinessCard
//
//  Created by Adriel Teles on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(UIColor(resource: .background))
                .ignoresSafeArea(.all)
            
            VStack{
                Image(ImageResource.adrielTeles)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150,height: 150)
                    .clipShape(Circle()).shadow(color: .black, radius: 6)
                    .overlay(
                        Circle().stroke(Color(.elements), lineWidth: 5)
                    )
                Text("Adriel Teles")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundStyle(.elements)
                Text("IOS Developer")
                    .font(.system(size: 25))
                    .foregroundStyle(.elements)
                Divider()
                InfoView(text: "+55 61 999539172", imageName: "phone.fill")
                InfoView(text: "adrielteles@outlook.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}


