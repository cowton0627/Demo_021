//
//  SecondViewController.swift
//  Demo_021
//
//  Created by Chun-Li Cheng on 2023/8/15.
//

import UIKit

class SecondViewController: UIViewController {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("Second VC init.")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Second VC did load.")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("Second VC will appear.")
    }
    
    override func viewWillLayoutSubviews() {
        print("Second VC will layout subviews.")
    }
    override func viewDidLayoutSubviews() {
        print("Second VC did layout subviews.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Second VC did appear.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Second VC will disappear.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Second VC did disappear.")
    }
    
    deinit {
        print("Second VC deinit.")
    }
    
}
