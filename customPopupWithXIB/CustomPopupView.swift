//
//  CustomPopupView.swift
//  customPopupWithXIB
//
//  Created by admin on 22/08/23.
//

import UIKit

class CustomPopupView: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!

    var contentView: UIView!

//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        commonInit()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        commonInit()
//    }
//
    private func commonInit() {
        Bundle.main.loadNibNamed("CustomPopupView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

    @IBAction func closeButtonTapped(_ sender: UIButton) {
        removeFromSuperview()
    }
}
