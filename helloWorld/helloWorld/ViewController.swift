//
//  ViewController.swift
//  helloWorld
//
//  Created by 문다 on 2021/07/07.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Click_moveBtn(_ sender: Any) {
        // storyboard find controller
        // move controller
        // => 스토리보드의 identity instpector에서 storyboardID를 이동할 보드(swift 파일)의 이름과 똑같이 설정
        
        // 상수는 let, 변수는 var
        // 상수 contoller는 Detailcontroller라는 아이디의 스토리보드를 찾아옴
        // 없을수도 있으니 예외 처리
        if let controller = self.storyboard?.instantiateViewController(identifier: "DetailController"){
            // move controller
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    // click event
//    @IBAction func Click_moveBtn(_ sender: Any) {
//        print("Click MOVE")
//    }
    

}

