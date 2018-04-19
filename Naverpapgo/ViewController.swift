//
//  ViewController.swift
//  Naverpapgo
//
//  Created by mac on 2018. 4. 18..
//  Copyright © 2018년 swift. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ActionBtn(_ sender: UIButton) {
        var url = "https://openapi.naver.com/v1/papago/n2mt"
        var params = ["source":"ko",
                      "target":"en",
                      "text":textField.text!]
        
        var header = ["Content-Type":"application/x-www-form-urlencoded; charset=UTF-8",
                      "X-Naver-Client-Id":"AmFqTqo_mWG6J7ACTmOc",
                      "X-Naver-Client-Secret":"Fi0LQCJZVN"]
        
        Alamofire.request(url, method: .post, parameters: params, encoding: URLEncoding.default, headers: header).responseObject { (response:DataResponse<Translation>) in
            var text = response.result.value
            print(text?.message?.result?.translatedText)
            self.textView.text = text?.message?.result?.translatedText
        }
        
    }
}

