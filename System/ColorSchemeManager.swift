//
//  ColorSchemeManager.swift
//  AMCUI
//
//  Created by Joao Marcus Dionisio Araujo on 03/06/24.
//

import Foundation

struct PreferenceKeys {
    static let themeStyle = "theme_style"
}

public enum ThemeStyle: Int {
    case themeA = 0
    case themeB = 1
    case themeC = 2
    case themeD = 3
    case themeE = 4
}

protocol ThemeServiceInterface {
    func setThemeStyle(_ themeStyle: ThemeStyle)
    func getThemeStyle() -> ThemeStyle
}

public final class ThemeService: ThemeServiceInterface {

    public static let shared = ThemeService()

    let userDefaults: UserDefaults

    public init() {
        self.userDefaults = UserDefaults.standard
    }

    public func setThemeStyle(_ themeStyle: ThemeStyle) {
        userDefaults.set(themeStyle.rawValue, forKey: PreferenceKeys.themeStyle)
    }

    public func getThemeStyle() -> ThemeStyle {
        let rawValue = userDefaults.integer(forKey: PreferenceKeys.themeStyle)
        if let themeStyle = ThemeStyle(rawValue: rawValue) {
            return themeStyle
        }
        return .themeA
    }
}

public class ColorSchemeManager {

}
