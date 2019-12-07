//
//  WelcomeBackgroundImage.swift
//  Kuchi
//
//  Created by ZhuXueliang on 2019/12/7.
//  Copyright © 2019 iossocket. All rights reserved.
//

import SwiftUI

struct WelcomeBackgroundImage: View {
    var body: some View {
        Image("swift_world")
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            .saturation(0.5)
            .blur(radius: 5)
            .opacity(0.08)
    }
}

struct WelcomeBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBackgroundImage()
    }
}
