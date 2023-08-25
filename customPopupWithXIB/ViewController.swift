//
//  ViewController.swift
//  customPopupWithXIB
//
//  Created by admin on 22/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showPopupButtonTapped(_ sender: UIButton) {
        if let customView = Bundle.main.loadNibNamed("CustomPopupView", owner: nil, options: nil)?.first as? CustomPopupView {
            // Customize the custom view if needed
            // For example: customView.titleLabel.text = "Custom Title"
            
            // Present the custom view as a popup
            customView.translatesAutoresizingMaskIntoConstraints = false
            customView.titleLabel.text = "Custom Popup"
            customView.messageLabel.text = "This is a custom popup created with XIB."
            view.addSubview(customView)
            NSLayoutConstraint.activate([
                customView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                customView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                customView.widthAnchor.constraint(equalToConstant: 300),
                customView.heightAnchor.constraint(equalToConstant: 200)
            ])
        }
    }
    
    @objc func closeButtonTapped(_ sender: UIButton) {
        // Handle close button tap
        sender.superview?.removeFromSuperview()
    }
}
