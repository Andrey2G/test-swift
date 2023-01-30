//
//  StartView.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import SwiftUI
import StoreKit

struct StartView: View {
    @State var showIntersitialAd: Bool = false
    var body: some View {
        ZStack
        {
            Color("BackgroundColor").ignoresSafeArea()
            Image("Launch")
                .resizable()
            
            VStack {
                Spacer()
                
                HStack {
                    NavigationLink {
                        ChaptersList()
                        
                    } label: {
                        Text("START")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                            .background(Rectangle().foregroundColor(.blue))
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                    
                    Button( action:{
                        // App Store URL.
                        let appStoreLink = "https://itunes.apple.com/us/artist/know-your-subject-limited/id359865591?mt=8"
                        
                        /* First create a URL, then check whether there is an installed app that can
                         open it on the device. */
                        if let url = URL(string: appStoreLink), UIApplication.shared.canOpenURL(url) {
                            // Attempt to open the URL.
                            UIApplication.shared.open(url, options: [:], completionHandler: {(success: Bool) in
                                if success {
                                    print("Launching \(url) was successful")
                                }})
                        }
                    })
                    {
                        Text("MORE")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                            .background(Rectangle().foregroundColor(.blue))
                            .cornerRadius(10)
                    }
                }
                .padding()
                
            }
            
        }
        .presentInterstitialAd(isPresented: $showIntersitialAd,  adUnitId: "ca-app-pub-3940256099942544/4411468910")
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
