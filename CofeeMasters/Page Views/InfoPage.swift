//
//  InfoPage.swift
//  CofeeMasters
//
//  Created by Давид Кулеба on 2023-02-01.
//

import SwiftUI
import WebKit

class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body)
    }
}

struct WebView: UIViewRepresentable{
    
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
                config.userContentController.add(WebInterfaceDialogs() , name: "alert")
        let webView = WKWebView(frame: .zero, configuration: config)
                    return webView // The UI kit view
}
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let url = URL(string: "https://firtman.github.io/coffeemasters/webapp")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    func executeJavascript(webView: WKWebView){
        webView.evaluateJavaScript("alert('hello from swift)")
    }

struct InfoPage: View {
    var body: some View {
        WebView()
    }
}

struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        InfoPage()
    }
}
