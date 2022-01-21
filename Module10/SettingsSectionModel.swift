//
//  SettingsSectionModel.swift
//  Module10
//
//  Created by username on 11.11.2021.
//

import Foundation

enum RowDetail {
    case none
    case stateWiFi
    case stateBT
    case modemMode
}

struct SettingsRow {
    let pictName: String
    let name: String
    var detail: RowDetail?
}

struct SettingsSection {
    var rows: [SettingsRow] = []
}
