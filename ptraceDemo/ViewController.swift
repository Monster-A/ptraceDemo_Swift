//
//  ViewController.swift
//  ptraceDemo
//
//  Created by lishuijiao on 2019/11/11.
//  Copyright © 2019 Lisj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func buttonAction() {
        let alert = UIAlertController(title: "弹框", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction.init(title: "a", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }


}

