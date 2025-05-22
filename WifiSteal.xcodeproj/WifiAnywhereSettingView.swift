//
// WifiAnywhereSettingView.swift
//
// Created by Mortyick on 18.05.25
//

import SwiftUI

struct WifiAnywhereSettingView: View {

    @State var lists = [
        UserList(id: "Wi-Fi Anywhere", isFollowing: false)]

    var body: some View {
        Form {
            Section(footer: Text("Wifi can be accessed from anywhere, provided Wifi access is already within reach and sim card is inserted.")) {
                ForEach($lists) { $list in
                    Toggle(list.id, isOn: $list.isFollowing)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                        .onChange(of: list.isFollowing) { state in
                            print("toggled to \(state)")
                        }
                        .accessibilityIdentifier(list.id)
                }
            }
        }
    }
}

struct UserList: Identifiable {
    var id: String
    var isFollowing = false
}

struct WifiAnywhereSettingView_Previews: PreviewProvider {
  static var previews: some View {
    WifiAnywhereSettingView()
  }
}  