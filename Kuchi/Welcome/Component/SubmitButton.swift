//
//  SubmitButton.swift
//  Kuchi
//
//  Created by ZhuXueliang on 2019/12/7.
//  Copyright © 2019 iossocket. All rights reserved.
//

import SwiftUI

struct SubmitButton: View {
    let action: () -> Void;
    var body: some View {
        Button(action: self.action) {
            HStack {
                Image(systemName: "checkmark")
                    .resizable()
                    .frame(width: 16, height: 16, alignment: .center)
                Text("OK")
                    .font(.body)
                    .bold()
          }
        }
        .bordered()
    }
}

struct SubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        SubmitButton {
            print("Tap")
        }
    }
}
