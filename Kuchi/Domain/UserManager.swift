//
//  UserManager.swift
//  Kuchi
//
//  Created by ZhuXueliang on 2019/12/7.
//  Copyright © 2019 iossocket. All rights reserved.
//

import SwiftUI

final class UserManager: ObservableObject {
    @Published
    var profile: Profile = Profile(name: "")
    
    @Published
    var settings: Settings = Settings(rememberUser: false)
    
    var isRegistered: Bool {
        return !profile.name.isEmpty
    }
    
    func isUserNameValid() -> Bool {
        return profile.name.count >= 3
    }
    
    func persistProfile() {
        if settings.rememberUser {
            UserDefaults.standard.set(try? PropertyListEncoder().encode(profile), forKey: "user-profile")
        }
    }
    
    func persistSettings() {
        UserDefaults.standard.set(try? PropertyListEncoder().encode(settings), forKey: "user-settings")
    }
    
    func load() {
        if let data = UserDefaults.standard.value(forKey: "user-profile") as? Data {
            if let profile = try? PropertyListDecoder().decode(Profile.self, from: data) {
                self.profile = profile
            }
        }
      
        if let data = UserDefaults.standard.value(forKey: "user-settings") as? Data {
            if let settings = try? PropertyListDecoder().decode(Settings.self, from: data) {
                self.settings = settings
            }
        }
    }
    
    func clear() {
        UserDefaults.standard.removeObject(forKey: "user-profile")
        UserDefaults.standard.removeObject(forKey: "user-settings")
    }
    
    func isUserNameValid(_ name: String) -> Bool {
        return name.count >= 3
    }
}
