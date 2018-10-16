//
//  HomeViewController.swift
//  CategorySelector
//
//  Created by Matsuoka Yoshiteru on 2018/10/15.
//  Copyright © 2018年 culumn. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapTopButton(_ sender: UIButton) {
        let viewController = CategorySelectorViewController(categoryType: .small)
        navigationController?.pushViewController(viewController, animated: true)
    }

    @IBAction func didTapBottomButton(_ sender: UIButton) {
        let viewController = CategorySelectorViewController(categoryType: .medium)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
