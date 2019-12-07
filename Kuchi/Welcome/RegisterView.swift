//
//  RegisterView.swift
//  Kuchi
//
//  Created by ZhuXueliang on 2019/11/23.
//  Copyright © 2019 iossocket. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    @ObservedObject var keyboardHandler: KeyboardFollower
    @EnvironmentObject var userManager: UserManager

    var body: some View {
        ZStack {
            WelcomeBackgroundImage()
            VStack {
                WelcomeMessageView()
                TextField("Name", text: $userManager.profile.name)
                    .bordered()
                    .padding([.leading, .trailing])
                HStack {
                    Spacer()
                    Text("\(userManager.profile.name.count)")
                        .font(.caption)
                        .foregroundColor(userManager.isUserNameValid() ? .green : .red)
                        .padding(.trailing)
                }
                .padding()
                HStack {
                    Spacer()
                    Toggle(isOn: $userManager.settings.rememberUser) {
                        Text("Remember me").font(.subheadline).multilineTextAlignment(.center).foregroundColor(.gray)
                    }.padding(.trailing)
                }
                .padding(.bottom)
                SubmitButton {
                    self.submit()
                }.disabled(!userManager.isUserNameValid())
            }
            .padding(.bottom, keyboardHandler.keyboardHeight)
            .onAppear { self.keyboardHandler.subscribe() }
            .onDisappear { self.keyboardHandler.unsubscribe() }
        }
    }
}

extension RegisterView {
    func submit() {
        if userManager.settings.rememberUser {
          userManager.persistProfile()
        } else {
          userManager.clear()
        }
        userManager.persistSettings()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(keyboardHandler: KeyboardFollower())
    }
}
