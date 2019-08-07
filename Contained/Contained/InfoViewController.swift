//
//  InfoViewController.swift
//  Contained
//
//  Created by Fabiola S on 8/6/19.
//  Copyright © 2019 Fabiola Saga. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 80))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        label.text = "Crabs"
        label.sizeToFit()
        label.center = view.center
    }
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func updateView() {
        view.addSubview(label)
        label.font = .boldSystemFont(ofSize: 48)
        label.textAlignment = .center
    }

}
