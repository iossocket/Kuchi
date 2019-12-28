//
//  CongratulationView.swift
//  Kuchi
//
//  Created by ZhuXueliang on 2019/12/28.
//  Copyright © 2019 iossocket. All rights reserved.
//

import SwiftUI

struct CongratulationView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Congratulations!")
                .font(.title)
                .foregroundColor(.gray)
            ZStack {
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 90)
                        .foregroundColor(Color(red: 0.5, green: 0, blue: 0).opacity(0.2))
                    Rectangle()
                        .frame(height: 90)
                        .foregroundColor(Color(red: 0.6, green: 0.1, blue: 0.1).opacity(0.4))
                }
                Image(systemName: "person.fill")
                    .resizable() // image 默认情况下是不会根据父View给的大小来约束自己的大小的，当添加了这个修饰符后，就可以了
                    .padding()
                    .frame(width: 80, height: 80)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(40, antialiased: true)
                    .shadow(radius: 4)
                VStack {
                    Spacer()
                    Text("iossocket")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .shadow(radius: 7)
                }.padding()
            }
            Text("You are awesome!")
                .fontWeight(.bold)
                .foregroundColor(.gray)
            Spacer()
            Button(action: {
                print("Done")
            }) {
                Text("Play again!")
            }.padding(.bottom)
        }
    }
}

struct CongratulationView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationView()
    }
}
