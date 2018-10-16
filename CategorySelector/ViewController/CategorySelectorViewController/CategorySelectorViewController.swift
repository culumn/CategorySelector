//
//  ViewController.swift
//  CategorySelector
//
//  Created by Matsuoka Yoshiteru on 2018/09/30.
//  Copyright © 2018年 culumn. All rights reserved.
//

import UIKit

class CategorySelectorViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var subCategoryCollectionView: UICollectionView!

    private enum Constant {
        enum Layout {
            static let collectionViewItemSpacing: CGFloat = 12
            static let collectionViewLineSpacing: CGFloat = 5
            static let numberOfColumnInCollectionView = 4
            static let collectionViewSectionInset = UIEdgeInsets(top: 10, left: 12, bottom: 10, right: 12)
            static let collectionViewCellLabelHeight: CGFloat = 40
        }
        enum Animation {
            static let fadeDuration = 0.25
            static let translationDuration = 0.55
            static let translationDampingRatio: CGFloat = 0.7
        }
    }

    private enum SubCategoryReloadingAction {
        case expand
        case collapse
    }

    var selectedCategory: Category?
    var selectedCategoryIndex: IndexPath?
    var selectedCellCenter: CGPoint?
    let categoryType: CategoryType
    let repository = CategoryRepository()
    let categories: [Category]

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(
        nibName nibNameOrNil: String? = R.nib.categorySelectorViewController.name,
        bundle nibBundleOrNil: Bundle? = R.nib.categorySelectorViewController.bundle,
        categoryType: CategoryType
        ) {
        self.categoryType = categoryType
        self.categories = repository.getCategories(type: categoryType)

        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Category"

        configureCollectionView()
        categoryCollectionView.reloadData()
    }

    private func configureCollectionView() {
        categoryCollectionView.register(R.nib.categoryCollectionViewCell)
        subCategoryCollectionView.register(R.nib.categoryCollectionViewCell)
    }

    private func reloadSubCategory(
        reloadingAction: SubCategoryReloadingAction,
        indexPath: IndexPath
        ) {
        switch reloadingAction {
        case .expand:
            subCategoryCollectionView.alpha = 0.3
            subCategoryCollectionView.isHidden = false
            let duration = Constant.Animation.fadeDuration
            let fadeAnimator = UIViewPropertyAnimator(duration: duration, curve: .easeIn) { [weak self] in
                self?.categoryCollectionView.alpha = 0.0
                self?.subCategoryCollectionView.alpha = 1.0
            }
            fadeAnimator.addCompletion { [weak self] _ in self?.categoryCollectionView.isHidden = true }
            fadeAnimator.isUserInteractionEnabled = false
            fadeAnimator.startAnimation()

            subCategoryCollectionView.reloadData()
        case .collapse:
            guard let selectedCellCenter = selectedCellCenter else { return }

            subCategoryCollectionView.visibleCells.forEach { cell in
                let translationDistance = (
                    x: selectedCellCenter.x - cell.center.x,
                    y: selectedCellCenter.y - cell.center.y
                )
                let duration = Constant.Animation.translationDuration
                let translationAnimator = UIViewPropertyAnimator(duration: duration, dampingRatio: 1.0) {
                    cell.transform = CGAffineTransform(translationX: translationDistance.x, y: translationDistance.y)
                }
                translationAnimator.isUserInteractionEnabled = false
                translationAnimator.startAnimation()
            }

            categoryCollectionView.alpha = 1.0
            categoryCollectionView.isHidden = false
            let duration = Constant.Animation.fadeDuration
            let fadeAnimator = UIViewPropertyAnimator(duration: duration, curve: .linear) { [weak self] in
                self?.subCategoryCollectionView.alpha = 0.0
            }
            fadeAnimator.addCompletion { [weak self] _ in self?.subCategoryCollectionView.isHidden = true }
            fadeAnimator.isUserInteractionEnabled = false
            fadeAnimator.startAnimation()
        }
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension CategorySelectorViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
        ) -> CGSize {
        let itemSpacing = Constant.Layout.collectionViewItemSpacing
        let collectionViewWidth = collectionView.bounds.width
        let numberOfColumn = Constant.Layout.numberOfColumnInCollectionView
        let sectionInset = Constant.Layout.collectionViewSectionInset
        let totalCellWidthInRow = collectionViewWidth
            - itemSpacing * CGFloat(numberOfColumn - 1)
            - (sectionInset.left + sectionInset.right)
        let cellWidth = totalCellWidthInRow / CGFloat(numberOfColumn)
        let labelHeight = Constant.Layout.collectionViewCellLabelHeight
        return CGSize(width: cellWidth, height: cellWidth + labelHeight)
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumInteritemSpacingForSectionAt section: Int
        ) -> CGFloat {
        return Constant.Layout.collectionViewLineSpacing
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int
        ) -> CGFloat {
        return Constant.Layout.collectionViewItemSpacing
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAt section: Int
        ) -> UIEdgeInsets {
        return Constant.Layout.collectionViewSectionInset
    }
}

// MARK: - UICollectionViewDataSource
extension CategorySelectorViewController: UICollectionViewDataSource {

    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
        ) -> Int {
        guard collectionView === subCategoryCollectionView,
            let selectedCategory = selectedCategory else {
                return categories.count
        }
        return selectedCategory.subCategories.count
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
        ) -> UICollectionViewCell {
        guard let categoryCell = collectionView.dequeueReusableCell(
            withReuseIdentifier: R.reuseIdentifier.categoryCollectionViewCell,
            for: indexPath
            ) else {
            fatalError("Failed to load cell")
        }
        let category: Category
        if collectionView === subCategoryCollectionView,
            let selectedCategory = selectedCategory {
            category = selectedCategory.subCategories[indexPath.row]
        } else {
            category = categories[indexPath.row]
        }
        categoryCell.configure(category: category)
        return categoryCell
    }
}

// MARK: - UICollectionViewDelegate
extension CategorySelectorViewController: UICollectionViewDelegate {

    func collectionView(
        _ collectionView: UICollectionView,
        didSelectItemAt indexPath: IndexPath
        ) {
        collectionView.deselectItem(at: indexPath, animated: true)

        if collectionView === subCategoryCollectionView {
            if indexPath == selectedCategoryIndex {
                // MARK: Collapse sub-caregories
                self.selectedCategory = nil
                reloadSubCategory(reloadingAction: .collapse, indexPath: indexPath)
            } else {
                // MARK: Do something using sub-category
            }
        } else {
            // MARK: Expand sub-categories
            var category = categories[indexPath.row]
            category.title = " "
            category.logoImage = .cancell

            let index = categoryType == .small ? indexPath.row : 0
            category.subCategories.insert(category, at: index)
            selectedCategory = category
            selectedCategoryIndex = IndexPath(row: index, section: indexPath.section)
            selectedCellCenter = collectionView.cellForItem(at: indexPath)?.center

            reloadSubCategory(reloadingAction: .expand, indexPath: indexPath)
        }
    }

    func collectionView(
        _ collectionView: UICollectionView,
        willDisplay cell: UICollectionViewCell,
        forItemAt indexPath: IndexPath
        ) {
        guard collectionView === subCategoryCollectionView,
            let selectedCellCenter = selectedCellCenter else { return }
        let translationDistance = (
            x: selectedCellCenter.x - cell.center.x,
            y: selectedCellCenter.y - cell.center.y
        )
        cell.transform = CGAffineTransform(translationX: translationDistance.x, y: translationDistance.y)

        let duration = Constant.Animation.translationDuration
        let dampingRatio = Constant.Animation.translationDampingRatio
        let translationAnimator = UIViewPropertyAnimator(duration: duration, dampingRatio: dampingRatio) {
            cell.transform = .identity
        }
        translationAnimator.isUserInteractionEnabled = false
        translationAnimator.startAnimation()
    }
}
