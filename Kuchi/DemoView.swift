//
//  DemoView.swift
//  Kuchi
//
//  Created by ZhuXueliang on 2019/12/14.
//  Copyright © 2019 iossocket. All rights reserved.
//

import SwiftUI

struct DemoView: View {
    var body: some View {
        HStack {
            Text("A great and warm welcome to Kuchi")
                .frame(width: 200, height: 200)
                .background(Color.red)
            Text("A great and warm welcome to Kuchi")
                .layoutPriority(1)
                .background(Color.red)
            Text("A great and warm welcome to Kuchi")
                .background(Color.red)
        }.background(Color.yellow)
    }
}

struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView()
    }
}
