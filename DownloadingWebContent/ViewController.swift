//
//  ViewController.swift
//  DownloadingWebContent
//
//  Created by Diego  Collao on 27-07-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //First we need to define the url of the website ...
        let url = NSURL(string: "http://www.stackoverflow.com")
        
        //Then we create a task ... (what I going to grab)
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
            (data, response, error) in
            
            if error == nil {
                var urlContent = NSString(data: data!, encoding: NSUTF8StringEncoding)
                print(urlContent)
            }
            
        }
        
        task.resume()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

