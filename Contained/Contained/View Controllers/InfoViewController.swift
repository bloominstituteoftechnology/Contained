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
        
        if let controllers = navigationController?.viewControllers.count {
            
            switch controllers {
            case 1:
                label.text = "Crabs"
                label.sizeToFit()
                label.center = view.center
            case 2:
                label.numberOfLines = 2
                updateLabelsForChildControllers("Tap to move\n the crab")
                label.sizeToFit()
                
            case 3:
                updateLabelsForChildControllers("Let's play")
                label.sizeToFit()
                
            default:
                return
            }
            
        }
    }
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    // MARK: Helper methods
    
    func updateView() {
        view.addSubview(label)
        label.font = .boldSystemFont(ofSize: 48)
        label.textAlignment = .center
    }
    
    func updateLabelsForChildControllers(_ textForLabel: String) {
        label.text = textForLabel
        label.font = .boldSystemFont(ofSize: 24)
        label.center = view.center
    }

}
