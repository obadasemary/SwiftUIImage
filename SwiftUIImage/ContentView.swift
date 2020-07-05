//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by Abdelrahman Mohamed on 6.07.2020.
//  Copyright © 2020 Abdelrahman Mohamed. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Image("paris")
                .resizable()
                //            .scaledToFit()
                //            .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                //                .frame(width: 350)
                //            .clipped()
                //                .clipShape(Circle())
                //                .clipShape(Ellipse())
                //                .padding()
                .clipShape(Capsule())
                .overlay(
                    Image(systemName: "heart.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .opacity(0.5),

                    alignment: .center
                )
            Image("paris")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(

                    Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your life it stays with you, for Paris is a moveable feast.\n\n- Ernest Hemingway")
                        .fontWeight(.heavy)
                        .font(.system(.headline, design: .rounded))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .opacity(0.8)
                        .padding(),

                    alignment: .top
                )
            Image("paris")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    Rectangle()
                        .foregroundColor(.black)
                        .opacity(0.4)
                        .overlay(
                            Text("Paris")
                                .font(.largeTitle)
                                .fontWeight(.black)
                                .foregroundColor(.white)
                                .frame(width: 200)
                        )
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
