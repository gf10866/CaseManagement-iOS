//
//  File.swift
//  AppLogin
//
//  Created by gaofeng on 2026/2/20.
//

import Foundation

extension String {
    static func lan(_ key: String.LocalizationValue) -> String {
        String(localized: key, bundle: .main)
    }
}
