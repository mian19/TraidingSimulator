//
//  UserDefaultsManager.swift
//  TraidingSimulator
//
//  Created by Kyzu on 11.02.23.
//

import Foundation

class UserDefaultsManager {
    
    static let shared = UserDefaultsManager()
    
    private init() {}
    
    func saveOnboarding() {
        UserDefaults.standard.set(true, forKey: "isOnboardingFinished")
    }
    
    func checkOnboarding() -> Bool {
        guard let onb = UserDefaults.standard.value(forKey: "isOnboardingFinished") as? Bool else { return false }
        return onb
    }
    
//    func saveSettings(settings: Settings) {
//        do {
//            let encoder = JSONEncoder()
//            let data = try encoder.encode(settings)
//            UserDefaults.standard.set(data, forKey: "settings")
//        } catch {
//            print(error)
//        }
//    }
//
//    func getSettings() -> Settings {
//        var settings = Settings()
//        guard let data = UserDefaults.standard.data(forKey: "settings") else {
//            return Settings()
//        }
//        do {
//            let decoder = JSONDecoder()
//            settings = try decoder.decode(Settings.self, from: data)
//        } catch {
//            print(error)
//        }
//        return settings
//    }
//
//    func saveResults(results: [Int]) {
//            UserDefaults.standard.set(results, forKey: "results")
//    }
//
//    func getResults() -> [Int] {
//        UserDefaults.standard.object(forKey: "results") as? [Int] ?? []
//    }
}
