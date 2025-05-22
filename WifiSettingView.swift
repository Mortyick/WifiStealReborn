//
// WifiSettingView.swift
//
// Created by Mortyick on 18.05.25
//
 
import SwiftUI

struct WifiSettingView: View {

    @State var lists = [
        UserList(id: "Wi-Fi", isFollowing: false)]

    var body: some View {
        Form {
            Section(footer: Text("AirDrop, AirPlay, Notify When Left Behind, and improved location accuracy require Wi-Fi.")) {
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


struct WifiSettingView_Previews: PreviewProvider {
  static var previews: some View {
    WifiSettingView()
  }
}