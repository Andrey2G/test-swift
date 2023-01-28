//
//  StartView.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import SwiftUI
import StoreKit

struct StartView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                Image("Launch")
                    .resizable()
                
                
                HStack {
                    NavigationLink {
                        ChaptersList()
                        
                    } label: {
                        Text("START")
                    }
                    
                    Spacer()
                    
                    Button("MORE") {
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
                    }
                    
                }
                
            }
            .padding()
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
