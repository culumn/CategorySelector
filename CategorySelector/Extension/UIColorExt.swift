//
//  UIColorExt.swift
//  CategorySelector
//
//  Created by Matsuoka Yoshiteru on 2018/10/06.
//  Copyright © 2018年 culumn. All rights reserved.
//

import UIKit

extension UIColor {

    func darked(with ratio: CGFloat = 0.8) -> UIColor {
        var hue = CGFloat()
        var saturation = CGFloat()
        var brightness = CGFloat()
        var alpha = CGFloat()
        getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        return UIColor(hue: hue, saturation: saturation, brightness: brightness * ratio, alpha: alpha)
    }
}
