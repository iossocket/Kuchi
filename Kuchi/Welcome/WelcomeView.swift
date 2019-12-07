//
//  WelcomeView.swift
//  Kuchi
//
//  Created by ZhuXueliang on 2019/11/23.
//  Copyright © 2019 iossocket. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            WelcomeBackgroundImage()
            WelcomeMessageView()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
