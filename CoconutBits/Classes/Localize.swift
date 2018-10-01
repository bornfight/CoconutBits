//
//  Localize.swift
//  Pods
//
//  Created by Filip Fajdetic on 30/01/2017.
//
//

import Foundation

/// Internal current language key
let LCLCurrentLanguageKey : String = "LCLCurrentLanguageKey"

/// Default language. English. If English is unavailable defaults to base localization.
let LCLDefaultLanguage : String = "en"

/// Name for language change notification
public let LCLLanguageChangeNotification : String = "LCLLanguageChangeNotification"

// MARK: Localization Syntax

public extension String {
    /**
     Swift 2 friendly localization syntax, replaces NSLocalizedString
     - Returns: The localized string.
     */
    func localized() -> String {
        if let path = Bundle.main.path(forResource: Localize.currentLanguage(), ofType: "lproj"), let bundle = Bundle(path: path) {
            return bundle.localizedString(forKey: self, value: nil, table: nil)
        }
        return self
    }
}


// MARK: Language Setting Functions

public class Localize: NSObject {
    
    /**
     List available languages
     - Returns: Array of available languages.
     */
    public class func availableLanguages() -> [String] {
        return Bundle.main.localizations
    }
    
    /**
     Current language
     - Returns: The current language. String.
     */
    public class func currentLanguage() -> String {
        var currentLanguage : String = String()
        if ((UserDefaults.standard.object(forKey: LCLCurrentLanguageKey)) != nil){
            currentLanguage = UserDefaults.standard.object(forKey: LCLCurrentLanguageKey) as! String
        }
        else {
            currentLanguage = self.defaultLanguage()
        }
        return currentLanguage
    }
    
    /**
     Change the current language
     - Parameter language: Desired language.
     */
    public class func setCurrentLanguage(language: String) {
        var selectedLanguage: String = String()
        let availableLanguages : [String] = self.availableLanguages()
        if (availableLanguages.contains(language)) {
            selectedLanguage = language
        }
        else {
            selectedLanguage = self.defaultLanguage()
        }
        if (selectedLanguage != currentLanguage()){
            UserDefaults.standard.set(selectedLanguage, forKey: LCLCurrentLanguageKey)
            UserDefaults.standard.synchronize()
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: LCLLanguageChangeNotification), object: nil)
        }
    }
    
    /**
     Default language
     - Returns: The app's default language. String.
     */
    class func defaultLanguage() -> String {
        var defaultLanguage : String = String()
        let preferredLanguage = Bundle.main.preferredLocalizations.first!
        let availableLanguages : [String] = self.availableLanguages()
        if (availableLanguages.contains(preferredLanguage)) {
            defaultLanguage = preferredLanguage
        }
        else {
            defaultLanguage = LCLDefaultLanguage
        }
        return defaultLanguage
    }
    
    /**
     Resets the current language to the default
     */
    public class func resetCurrentLanguageToDefault() {
        setCurrentLanguage(language: self.defaultLanguage())
    }
    
    /**
     Get the current language's display name for a language.
     - Parameter language: Desired language.
     - Returns: The localized string.
     */
    public class func displayNameForLanguage(language: String) -> String {
        let currentLanguage : String = self.currentLanguage()
        let locale : NSLocale = NSLocale(localeIdentifier: currentLanguage)
        let displayName = locale.displayName(forKey: NSLocale.Key.languageCode, value: language)
        return displayName!
    }
}
