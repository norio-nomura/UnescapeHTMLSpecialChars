//
//  ViewController.swift
//  testHost
//
//  Created by sonson on 2017/02/09.
//  Copyright © 2017年 sonson. All rights reserved.
//

import UIKit
import UnescapeHTMLSpecialChars

class ViewController: UIViewController {
    
    let testCount = 2000
    let testString = "hoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahog"
    
    func sampling() {
        for _ in 0..<self.testCount {
            let _ = self.testString.gtm_stringByUnescapingFromHTML()
        }
        for _ in 0..<self.testCount {
            let _ = self.testString.escapeHTML()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            self.sampling()
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
            self.sampling()
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 10) {
            self.sampling()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

