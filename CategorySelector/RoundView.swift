//
//  RoundView.swift
//  CategorySelector
//
//  Created by Matsuoka Yoshiteru on 2018/10/04.
//  Copyright © 2018年 culumn. All rights reserved.
//

import UIKit

@IBDesignable
class RoundView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        clipsToBounds = true
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = halfSizeCornerRadius
    }
}
