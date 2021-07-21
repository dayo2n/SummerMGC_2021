//
//  ViewController.swift
//  SampleWebView
//
//  Created by 문다 on 2021/07/13.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var WebViewMain: WKWebView!
   
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
    
            // 웹뷰 사용법
            // 1. Url string, url 주소를 준비
            // 2. url > request, 주소를 url request로 만들기
            // 3. request > load, 요청한 주소를 로딩
    
    
            // swift에서 null, 빈 값은 nil로 표현
            // swift는 java와 달리 null point exception으로부터 안전한 언어
            // 값이 없을 수도, 있을 수도 있는 변수를 정의할 때는 타입 annotation에 ?를 붙여야 함.
            // 이렇게 정의한 변수가 Optional, 디폴트값은 nil
    
            // 옵셔널값을 가지고오고싶다면 사용하는 것 -> optional binding
            // 값이 존재하는 지 검사 후 존재하면 다른 변수에 그 값을 대입하여 사용, if let || if  var
            let urlString = "https://www.google.com/"
            if let googleUrl = URL(string: urlString){ // unwrapping 과정 -
                // 값이 있으면 if문 안으로, nil이면 pass
                let urlReq = URLRequest(url: googleUrl)
                WebViewMain.load(urlReq)
            }
        }

}

