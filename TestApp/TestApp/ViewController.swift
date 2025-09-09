//
//  ViewController.swift
//  TestApp
//

import UIKit
import KlarnaMobileSDK

class ViewController: UIViewController {

    var osmView: KlarnaOSMView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        osmView = KlarnaOSMView()
        
        osmView.frame = .init(x: 0, y: 500, width: view.frame.width, height: view.frame.height)
        self.view.addSubview(osmView)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        osmView.render()
    }

}

