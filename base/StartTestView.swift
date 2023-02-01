//
//  StartTestView.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import GoogleMobileAds
import SwiftUI
import WebKit

struct StartTestView:UIViewRepresentable
{
    var chapter: String
    func makeCoordinator() -> StartTestView.Coordinator {
            Coordinator(self)
        }
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        webView.navigationDelegate = context.coordinator
        let url = Bundle.main.url(forResource: "index", withExtension: "html")!
        webView.loadFileURL(url, allowingReadAccessTo: url)
        let request = URLRequest(url: url)
        webView.load(request)
        
    }
    
    class Coordinator: NSObject, WKNavigationDelegate {
            let parent: StartTestView

            init(_ parent: StartTestView) {
                self.parent = parent
            }

            func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
                let scriptSource = "showTopic(3)"
                
                webView.evaluateJavaScript(scriptSource, completionHandler: { (object, error) in
                    if let error = error {
                        print("Error calling javascript:showTopic(3)")
                        print(error.localizedDescription)
                    } else {
                        print("Called javascript:showTopic()")
                    }
                })
            }

            
        }
    
}

struct StartTestView_Previews: PreviewProvider {
    static var previews: some View {
        StartTestView(chapter: "")
    }
}
