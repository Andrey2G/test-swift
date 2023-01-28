//
//  StartView.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Launch")
                .resizable()
            
            NavigationView {
                HStack {
                    
                    NavigationLink(destination: ChaptersList()) {
                        Text("START")
                    }
                    Spacer()
                    
                    Button("MORE"){
                        
                    }
                }
            }

            
        }
        .padding()
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
