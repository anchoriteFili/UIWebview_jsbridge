//
//  ViewController.swift
//  bridgeTest
//
//  Created by zetafin on 2018/9/7.
//  Copyright © 2018年 赵宏亚. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UIWebViewDelegate, UIScrollViewDelegate {
    
    var bridge: WebViewJavascriptBridge?
    var webview = UIWebView.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 创建webview
        webview.scalesPageToFit = true
        webview.clipsToBounds = false
        webview.delegate = self
        webview.scrollView.showsVerticalScrollIndicator = false
        webview.translatesAutoresizingMaskIntoConstraints = false
        webview.scrollView.delegate = self
        self.view.addSubview(webview)
        
        let request = URLRequest(url: URL(string: "http://ddj.zetafin.cn")!)
        webview.loadRequest(request)
        
        
//        let bridge = WebViewJavascriptBridge.init(forWebView: webview)
        let bridge = WebViewJavascriptBridge.init(webview)
        bridge?.setWebViewDelegate(self)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        print("将要开始加载页面")
        return true
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("开始加载页面")
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("页面加载完成")
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print("页面加载失败")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

