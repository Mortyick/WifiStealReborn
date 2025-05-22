//
// RootSettingView.swift
//
// Created by Mortyick on 18.05.25
//

import SwiftUI

struct RootSettingView: View {
  let viewToDisplay: String
  var body: some View {
    switch viewToDisplay {
    case "Wi-Fi":
      WifiSettingView()
    case "Wi-Fi Anywhere":
      WifiAnywhereSettingView()
    case "Bluetooth":
      BluetoothSettingView()
    case "Cellular":
      CellularSettingView()
    default:
      RootSettingView(viewToDisplay: "")
    }
  }
}