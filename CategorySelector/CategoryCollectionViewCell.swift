//
//  CategoryCollectionViewCell.swift
//  CategorySelector
//
//  Created by Matsuoka Yoshiteru on 2018/09/30.
//  Copyright © 2018年 culumn. All rights reserved.
//

import UIKit

@IBDesignable
class CategoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageBackgroundView: RoundView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    @IBInspectable var imageBackgroundColor: UIColor? {
        didSet {
            imageBackgroundView.backgroundColor = imageBackgroundColor
        }
    }
    @IBInspectable var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    @IBInspectable var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }

    func configure(category: Category) {
        self.title = category.title
        self.imageBackgroundColor = category.themeColor
        self.image = category.logoImage?.image
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let didTouchImageBackgroundView = touches.first?.location(in: imageBackgroundView) != nil
        guard didTouchImageBackgroundView else { return }
        imageBackgroundColor = imageBackgroundColor?.darked(with: 0.9)
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        imageBackgroundColor = imageBackgroundColor?.darked(with: 1 / 0.9)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        imageBackgroundColor = imageBackgroundColor?.darked(with: 1 / 0.9)
    }
}
