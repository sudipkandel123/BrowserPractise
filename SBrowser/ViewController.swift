//
//  ViewController.swift
//  SBrowser
//
//  Created by Sudip on 8/30/18.
//  Copyright © 2018 Sudipasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate,UISearchBarDelegate //added UIWebViewDelegate and UISearchBarDelegate
{

    @IBOutlet weak var actInd: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "http://www.google.com") // the string value is stored into immutable value url
        let request = URLRequest(url: url!) //takes request from the url and covert it into the browser
        webView.loadRequest(request)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func webViewDidStartLoad(_ webView: UIWebView) {
        actInd.startAnimating() // whenever the webview starts loadining and not yet over start animating
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        actInd.stopAnimating() //when the webview stops loading ie the page is displayed stop the animation
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder() //when search button is pressed the responder or keyboard is resigned
        let url = URL(string: "http://\(searchBar.text! )")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }


}

