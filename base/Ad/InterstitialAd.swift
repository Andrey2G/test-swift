//
//  InterstitialAd.swift
//  SwiftUIMobileAds
//
//  Created by Patrick Haertel on 5/23/21.
//

import GoogleMobileAds
import SwiftUI
import UIKit

class InterstitialAd: NSObject {
    var interstitialAd: GADInterstitialAd?
    
    static let shared = InterstitialAd()
    
    func loadAd(withAdUnitId id: String) {
        let request = GADRequest()
        GADInterstitialAd.load(withAdUnitID:id,
                               request: request,
                               completionHandler: { [self] ad, error in
            if let error = error {
                print("Failed to load interstitial ad with error: \(error.localizedDescription)")
                return
            }
            interstitialAd = ad
        })
    }
    
}

struct InterstitialAdView: UIViewControllerRepresentable {
    
    let interstitialAd = InterstitialAd.shared.interstitialAd
    @Binding var isPresented: Bool
    var adUnitId: String
    
    init(isPresented: Binding<Bool>, adUnitId: String) {
        self._isPresented = isPresented
        self.adUnitId = adUnitId
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        let view = UIViewController()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(1)) {
            self.showAd(from: view)
        }
        
        return view
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func showAd(from root: UIViewController) {
        
        if let ad = interstitialAd {
            ad.present(fromRootViewController: root)
        } else {
            print("Ad not ready")
            self.isPresented.toggle()
        }
    }
    
    class Coordinator: NSObject, GADFullScreenContentDelegate {
        var parent: InterstitialAdView
        
        init(_ parent: InterstitialAdView) {
            self.parent = parent
            super.init()
            parent.interstitialAd?.fullScreenContentDelegate = self
        }
        
        func adDidDismissFullScreenContent(_ ad: GADFullScreenPresentingAd) {
            InterstitialAd.shared.loadAd(withAdUnitId: parent.adUnitId)
            
            parent.isPresented.toggle()
        }
    }
}
