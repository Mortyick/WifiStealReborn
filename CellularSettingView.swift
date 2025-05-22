//
// CellularSettingView.swift
//
// Created by Mortyick on 18.05.25
//

import SwiftUI

struct CellularSettingView: View {
    var body: some View {
        Image(uiImage: UIImage(named: "troll")!)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .padding()
    }
}

struct CellularSettingView_Previews: PreviewProvider {
  static var previews: some View {
    CellularSettingView()
  }
}