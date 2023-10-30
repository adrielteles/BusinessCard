//
//  InfoView.swift
//  BusinessCard
//
//  Created by Adriel Teles on 30/10/23.
//

import SwiftUI

struct InfoView: View {
    
    let text:String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.elements)
            .frame(height: 50)
            .padding(.horizontal)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundStyle(Color.background)
                    Text(text)
                        .foregroundStyle(Color.background)
                }).padding(.all)
    }
}

#Preview {
    ZStack{
        Color(.background)
            .ignoresSafeArea(.all)
        InfoView(text: "+55 61 99953-9172", imageName: "phone.fill")
    }
}
