//
//  baseApp.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import SwiftUI
import AppTrackingTransparency
import GoogleMobileAds

@main
struct baseApp: App {
    init() {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        GADMobileAds.sharedInstance().requestConfiguration.testDeviceIdentifiers = [ GADSimulatorID ]
        
        }
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
    }
}

