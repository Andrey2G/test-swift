//
//  StartTestView.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import SwiftUI
import WebKit

struct StartTestView:UIViewRepresentable
{
    var chapter: String
    
    func makeUIView(context: Context) -> WKWebView {
            return WKWebView()
        }

        func updateUIView(_ webView: WKWebView, context: Context) {
            let url=URL(string: "https://google.com")!
            let request = URLRequest(url: url)
            webView.load(request)
        }
}

struct StartTestView_Previews: PreviewProvider {
    static var previews: some View {
        StartTestView(chapter: "")
    }
}
