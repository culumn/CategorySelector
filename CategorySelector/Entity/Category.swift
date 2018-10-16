//
//  Category.swift
//  CategorySelector
//
//  Created by Matsuoka Yoshiteru on 2018/10/02.
//  Copyright © 2018年 culumn. All rights reserved.
//

import Foundation
import UIKit

struct Category {
    var title: String?
    var themeColor: UIColor?
    var logoImage: LogoImage?
    var subCategories: [Category] = []

    init(
        title: String?,
        themeColor: UIColor?,
        subCategories: [Category] = []
        ) {
        self.title = title
        self.themeColor = themeColor
        self.subCategories = subCategories
    }

    init(
        title: String?,
        themeColor: UIColor?,
        logoImage: LogoImage?,
        subCategories: [Category] = []
        ) {
        self.title = title
        self.themeColor = themeColor
        self.logoImage = logoImage
        self.subCategories = subCategories
    }
}
