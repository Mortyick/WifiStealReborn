//
// SettingsView.swift
//
// Created by Mortyick on 18.05.25
//

import SwiftUI

struct SettingsView: View {
  
  let settings: Array<Setting> = [
    Setting(title: "Wi-Fi", color: .blue, imageName: "wifi.square.fill"),
    Setting(title: "Wi-Fi Anywhere", color: .blue, imageName: "wifi.square.fill"),
    Setting(title: "Bluetooth", color: .blue, imageName: "wifi.square.fill"),
    Setting(title: "Cellular", color: .green, imageName: "antenna.radiowaves.left.and.right")
  ]
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(settings, id: \.self) { setting in
          NavigationLink(destination: RootSettingView(viewToDisplay: setting.title).navigationBarTitleDisplayMode(.inline)) {
            HStack {
              SettingImage(color: setting.color, imageName: setting.imageName)
              Text(setting.title)
            }
          }
        }
      }
      .navigationTitle("Settings")
    }
  }
}

struct Setting: Hashable {
  let title: String
  let color: Color
  let imageName: String
}

struct SettingImage: View {
  let color: Color
  let imageName: String
  
  var body: some View {
    Image(systemName: imageName)
      .resizable()
      .foregroundStyle(color)
      .frame(width: 25, height: 25)
  }
}