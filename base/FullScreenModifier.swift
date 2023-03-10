//
//  FullScreenModifier.swift
//  SwiftUIMobileAds
//
//  Created by Patrick Haertel on 5/23/21.
//

import SwiftUI

struct FullScreenModifier<Parent: View>: View {
    @Binding var isPresented: Bool
    
    var adUnitId: String
    var parent: Parent
    
    var body: some View {
        ZStack {
            parent
            
            if isPresented {
                EmptyView()
                    .edgesIgnoringSafeArea(.all)
                    InterstitialAdView(isPresented: $isPresented, adUnitId: adUnitId)
                
            }
        }
        .onAppear {
            InterstitialAd.shared.loadAd(withAdUnitId: adUnitId)
            
        }
    }
}

extension View {
    
    public func presentInterstitialAd(isPresented: Binding<Bool>, adUnitId: String) -> some View {
        FullScreenModifier(isPresented: isPresented, adUnitId: adUnitId, parent: self)
    }
}
