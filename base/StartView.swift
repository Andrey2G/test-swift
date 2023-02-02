//
//  StartView.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import SwiftUI
import StoreKit

struct StartView: View {
    @State var showChaptersListView: Bool = false
       
    var body: some View {
        ZStack
        {
            Color("BackgroundColor").ignoresSafeArea()
            Image("Launch")
                .resizable()
            
            VStack {
                
                HStack {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        
                    
                    Text("CII R04 Pensions & Retirement Planning")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(maxHeight: .infinity)
                        
                        
                }
                .frame(height: 120)
                
                
                
                Spacer()
                
                HStack {
                    
                    Button(action: {
                        self.showChaptersListView=true
                    })
                    {
                        Text("START")
                            .font(.title2)
                            .foregroundColor(.blue)
                            .padding()
                            .background(Rectangle().foregroundColor(.white))
                            .cornerRadius(10)
                    }.fullScreenCover(isPresented: self.$showChaptersListView, content: {
                        ChaptersList()
                    })
                    
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
                            .font(.title2)
                            .foregroundColor(.blue)
                            .padding()
                            .background(Rectangle().foregroundColor(.white))
                            .cornerRadius(10)
                    }
                }
                .padding()
                
            }
            
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
