//
//  WelcomeMessageView.swift
//  Kuchi
//
//  Created by ZhuXueliang on 2019/12/7.
//  Copyright © 2019 iossocket. All rights reserved.
//

import SwiftUI

struct WelcomeMessageView: View {
    var body: some View {
        HStack {
            LogoImage()
            VStack(alignment: .leading)  {
                Text("Welcome to")
                    .font(.headline)
                    .bold()
                Text("Kuchi")
                    .font(.largeTitle)
                    .bold()
            }
            .foregroundColor(.red)
            .lineLimit(2)
            .multilineTextAlignment(.leading)
            .padding(.horizontal)
        }
    }
}

struct WelcomeMessageView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeMessageView()
    }
}
