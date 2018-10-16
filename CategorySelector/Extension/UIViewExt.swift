//
//  UIViewExt.swift
//  CategorySelector
//
//  Created by Matsuoka Yoshiteru on 2018/10/04.
//  Copyright © 2018年 culumn. All rights reserved.
//

import UIKit

extension UIView {

    var halfSizeCornerRadius: CGFloat {
        return min(bounds.width, bounds.height) / 2
    }
}
