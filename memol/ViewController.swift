//
//  ViewController.swift
//  memol
//
//  Created by Koki Tanaka on 2020/03/04.
//  Copyright © 2020 gojiteji.com. All rights reserved.
//

import UIKit
import PencilKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let canvas = PKCanvasView(frame: view.frame)
         view.addSubview(canvas)
         canvas.tool = PKInkingTool(.pen, color: .black, width: 30)
        
        if let window = UIApplication.shared.windows.first {
            if let toolPicker = PKToolPicker.shared(for: window) {
                toolPicker.addObserver(canvas)
                toolPicker.setVisible(true, forFirstResponder: canvas)
                canvas.becomeFirstResponder()
            }
        }
        
        
        
        
    }


}

