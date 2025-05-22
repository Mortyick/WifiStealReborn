//
// BluetoothSettingView.swift
//
// Created by Mortyick on 18.05.25
//
 
import SwiftUI

struct BluetoothSettingView: View {

    @State var lists = [
        UserList(id: "Bluetooth", isFollowing: false)]

    var body: some View {
        Form {
            Section(footer: Text("AirDrop, AirPlay, Find My, and Location Services use Bluetooth.")) {
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

struct BluetoothSettingView_Previews: PreviewProvider {
  static var previews: some View {
    BluetoothSettingView()
  }
}