//
//  CategoryRepository.swift
//  CategorySelector
//
//  Created by Matsuoka Yoshiteru on 2018/09/30.
//  Copyright © 2018年 culumn. All rights reserved.
//

import Foundation

class CategoryRepository {

    func getCategories(type: CategoryType) -> [Category] {
        let categories: [Category]
        switch type {
        case .small:
            categories = [
                Category(
                    title: "Food & Drinks",
                    themeColor: #colorLiteral(red: 0.9843137255, green: 0.5490196078, blue: 0.2549019608, alpha: 1),
                    logoImage: .food,
                    subCategories: [
                        Category(title: "Restaurants", themeColor: #colorLiteral(red: 0.9843137255, green: 0.5490196078, blue: 0.2549019608, alpha: 1), logoImage: .food),
                        Category(title: "Ramen", themeColor: #colorLiteral(red: 0.9843137255, green: 0.5490196078, blue: 0.2549019608, alpha: 1), logoImage: .ramen),
                        Category(title: "Cafés", themeColor: #colorLiteral(red: 0.9843137255, green: 0.5490196078, blue: 0.2549019608, alpha: 1), logoImage: .coffee),
                        ]
                ),
                Category(
                    title: "Shopping",
                    themeColor: #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.168627451, alpha: 1),
                    logoImage: .shoppingBag1,
                    subCategories: [
                        Category(title: "Groceries", themeColor: #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.168627451, alpha: 1), logoImage: .shoppingBag2),
                        Category(title: "Convenience", themeColor: #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.168627451, alpha: 1), logoImage: .store),
                        Category(title: "Drug Stores", themeColor: #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.168627451, alpha: 1), logoImage: .drug),
                        ]
                ),
                Category(
                    title: "Fun",
                    themeColor: #colorLiteral(red: 0.9215686275, green: 0.462745098, blue: 0.8352941176, alpha: 1),
                    logoImage: .movie,
                    subCategories: [
                        Category(title: "Parks", themeColor: #colorLiteral(red: 0.9215686275, green: 0.462745098, blue: 0.8352941176, alpha: 1), logoImage: .park),
                        Category(title: "Internet Cafés", themeColor: #colorLiteral(red: 0.9215686275, green: 0.462745098, blue: 0.8352941176, alpha: 1), logoImage: .coffee),
                        Category(title: "Karaoke", themeColor: #colorLiteral(red: 0.9215686275, green: 0.462745098, blue: 0.8352941176, alpha: 1), logoImage: .mic),
                        ]
                ),
                Category(
                    title: "Travel",
                    themeColor: #colorLiteral(red: 0.2274509804, green: 0.5960784314, blue: 0.9882352941, alpha: 1),
                    logoImage: .airplane,
                    subCategories: [
                        Category(title: "Bank & Post", themeColor: #colorLiteral(red: 0.2274509804, green: 0.5960784314, blue: 0.9882352941, alpha: 1), logoImage: .bank),
                        Category(title: "Hotels", themeColor: #colorLiteral(red: 0.2274509804, green: 0.5960784314, blue: 0.9882352941, alpha: 1), logoImage: .bed),
                        Category(title: "Transit Stations", themeColor: #colorLiteral(red: 0.2274509804, green: 0.5960784314, blue: 0.9882352941, alpha: 1), logoImage: .train),
                        ]
                ),
            ]
        case .medium:
            categories = [
                Category(
                    title: "Food",
                    themeColor: #colorLiteral(red: 0.9843137255, green: 0.5490196078, blue: 0.2549019608, alpha: 1),
                    logoImage: .food,
                    subCategories: [
                        Category(title: "Popular", themeColor: #colorLiteral(red: 0.9843137255, green: 0.5490196078, blue: 0.2549019608, alpha: 1), logoImage: .popular),
                        Category(title: "Restaurants", themeColor: #colorLiteral(red: 0.9843137255, green: 0.5490196078, blue: 0.2549019608, alpha: 1), logoImage: .food),
                        Category(title: "Groceries", themeColor: #colorLiteral(red: 0.9843137255, green: 0.5490196078, blue: 0.2549019608, alpha: 1), logoImage: .shoppingBag2),
                        Category(title: "Fast Food", themeColor: #colorLiteral(red: 0.9843137255, green: 0.5490196078, blue: 0.2549019608, alpha: 1), logoImage: .humberger),
                        Category(title: "Coffee Shops", themeColor: #colorLiteral(red: 0.9843137255, green: 0.5490196078, blue: 0.2549019608, alpha: 1), logoImage: .coffee),
                        Category(title: "Bakeries", themeColor: #colorLiteral(red: 0.9843137255, green: 0.5490196078, blue: 0.2549019608, alpha: 1), logoImage: .bakeries),
                        Category(title: "Desserts", themeColor: #colorLiteral(red: 0.9843137255, green: 0.5490196078, blue: 0.2549019608, alpha: 1), logoImage: .desserts),
                        ]
                ),
                Category(
                    title: "Drinks",
                    themeColor: #colorLiteral(red: 0.9921568627, green: 0.5529411765, blue: 0.2588235294, alpha: 1),
                    logoImage: .coffee,
                    subCategories: [
                        Category(title: "Popular", themeColor: #colorLiteral(red: 0.9921568627, green: 0.5529411765, blue: 0.2588235294, alpha: 1), logoImage: .popular),
                        Category(title: "Coffee Shops", themeColor: #colorLiteral(red: 0.9921568627, green: 0.5529411765, blue: 0.2588235294, alpha: 1), logoImage: .coffee),
                        Category(title: "Stores", themeColor: #colorLiteral(red: 0.9921568627, green: 0.5529411765, blue: 0.2588235294, alpha: 1), logoImage: .shoppingBag2),
                        Category(title: "Tea & Juice", themeColor: #colorLiteral(red: 0.9921568627, green: 0.5529411765, blue: 0.2588235294, alpha: 1), logoImage: .tea),
                        Category(title: "Bars", themeColor: #colorLiteral(red: 0.9921568627, green: 0.5529411765, blue: 0.2588235294, alpha: 1), logoImage: .bar),
                        Category(title: "Beer", themeColor: #colorLiteral(red: 0.9921568627, green: 0.5529411765, blue: 0.2588235294, alpha: 1), logoImage: .beer),
                        Category(title: "Wine", themeColor: #colorLiteral(red: 0.9921568627, green: 0.5529411765, blue: 0.2588235294, alpha: 1), logoImage: .wine),
                        ]
                ),
                Category(
                    title: "Shopping",
                    themeColor: #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.168627451, alpha: 1),
                    logoImage: .shoppingBag1,
                    subCategories: [
                        Category(title: "Popular", themeColor: #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.168627451, alpha: 1), logoImage: .popular),
                        Category(title: "Shopping Centers", themeColor: #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.168627451, alpha: 1), logoImage: .shoppingBag1),
                        Category(title: "Groceries", themeColor: #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.168627451, alpha: 1), logoImage: .shoppingBag2),
                        Category(title: "Apparel", themeColor: #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.168627451, alpha: 1), logoImage: .apparel),
                        Category(title: "Home & Office", themeColor: #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.168627451, alpha: 1), logoImage: .office),
                        Category(title: "Convenience", themeColor: #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.168627451, alpha: 1), logoImage: .store),
                        Category(title: "Sporting Goods", themeColor: #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.168627451, alpha: 1), logoImage: .sportingGoods),
                        ]
                ),
                Category(
                    title: "Travel",
                    themeColor: #colorLiteral(red: 0.1764705882, green: 0.7607843137, blue: 0.2470588235, alpha: 1),
                    logoImage: .airplane,
                    subCategories: [
                        Category(title: "Popular", themeColor: #colorLiteral(red: 0.1764705882, green: 0.7607843137, blue: 0.2470588235, alpha: 1), logoImage: .popular),
                        Category(title: "Airports", themeColor: #colorLiteral(red: 0.1764705882, green: 0.7607843137, blue: 0.2470588235, alpha: 1), logoImage: .airplane),
                        Category(title: "Museums", themeColor: #colorLiteral(red: 0.1764705882, green: 0.7607843137, blue: 0.2470588235, alpha: 1), logoImage: .museum),
                        Category(title: "Hotels", themeColor: #colorLiteral(red: 0.1764705882, green: 0.7607843137, blue: 0.2470588235, alpha: 1), logoImage: .bed),
                        Category(title: "Banks & ATMs", themeColor: #colorLiteral(red: 0.1764705882, green: 0.7607843137, blue: 0.2470588235, alpha: 1), logoImage: .bank),
                        Category(title: "Convenience", themeColor: #colorLiteral(red: 0.1764705882, green: 0.7607843137, blue: 0.2470588235, alpha: 1), logoImage: .store),
                        Category(title: "Landmarks", themeColor: #colorLiteral(red: 0.1764705882, green: 0.7607843137, blue: 0.2470588235, alpha: 1), logoImage: .star),
                        ]
                ),
                Category(
                    title: "Servieces",
                    themeColor: #colorLiteral(red: 0.6392156863, green: 0.4862745098, blue: 0.9882352941, alpha: 1),
                    logoImage: .bank,
                    subCategories: [
                        Category(title: "Popular", themeColor: #colorLiteral(red: 0.6392156863, green: 0.4862745098, blue: 0.9882352941, alpha: 1), logoImage: .popular),
                        Category(title: "Beauty", themeColor: #colorLiteral(red: 0.6392156863, green: 0.4862745098, blue: 0.9882352941, alpha: 1), logoImage: .beauty),
                        Category(title: "Laundry", themeColor: #colorLiteral(red: 0.6392156863, green: 0.4862745098, blue: 0.9882352941, alpha: 1), logoImage: .hanger),
                        Category(title: "Banks & ATMs", themeColor: #colorLiteral(red: 0.6392156863, green: 0.4862745098, blue: 0.9882352941, alpha: 1), logoImage: .bank),
                        Category(title: "Home Services", themeColor: #colorLiteral(red: 0.6392156863, green: 0.4862745098, blue: 0.9882352941, alpha: 1), logoImage: .home),
                        Category(title: "Pet Services", themeColor: #colorLiteral(red: 0.6392156863, green: 0.4862745098, blue: 0.9882352941, alpha: 1), logoImage: .pet),
                        Category(title: "Post", themeColor: #colorLiteral(red: 0.6392156863, green: 0.4862745098, blue: 0.9882352941, alpha: 1), logoImage: .mail)
                    ]
                ),
                Category(
                    title: "Fun",
                    themeColor: #colorLiteral(red: 0.9215686275, green: 0.462745098, blue: 0.8352941176, alpha: 1),
                    logoImage: .movie,
                    subCategories: [
                        Category(title: "Popular", themeColor: #colorLiteral(red: 0.9215686275, green: 0.462745098, blue: 0.8352941176, alpha: 1), logoImage: .popular),
                        Category(title: "Nightlife", themeColor: #colorLiteral(red: 0.9215686275, green: 0.462745098, blue: 0.8352941176, alpha: 1), logoImage: .turnTable),
                        Category(title: "Music & Drama", themeColor: #colorLiteral(red: 0.9215686275, green: 0.462745098, blue: 0.8352941176, alpha: 1), logoImage: .music),
                        Category(title: "Parks & Rec", themeColor: #colorLiteral(red: 0.9215686275, green: 0.462745098, blue: 0.8352941176, alpha: 1), logoImage: .park),
                        Category(title: "Movies", themeColor: #colorLiteral(red: 0.9215686275, green: 0.462745098, blue: 0.8352941176, alpha: 1), logoImage: .movie),
                        Category(title: "Fun & Games", themeColor: #colorLiteral(red: 0.9215686275, green: 0.462745098, blue: 0.8352941176, alpha: 1), logoImage: .amusementPark),
                        Category(title: "Sports", themeColor: #colorLiteral(red: 0.9215686275, green: 0.462745098, blue: 0.8352941176, alpha: 1), logoImage: .sports),
                        ]
                ),
                Category(
                    title: "Health",
                    themeColor: #colorLiteral(red: 0.9882352941, green: 0.3725490196, blue: 0.3843137255, alpha: 1),
                    logoImage: .health,
                    subCategories: [
                        Category(title: "Popular", themeColor: #colorLiteral(red: 0.9882352941, green: 0.3725490196, blue: 0.3843137255, alpha: 1), logoImage: .popular),
                        Category(title: "Wellness", themeColor: #colorLiteral(red: 0.9882352941, green: 0.3725490196, blue: 0.3843137255, alpha: 1), logoImage: .wellness),
                        Category(title: "Health Markets", themeColor: #colorLiteral(red: 0.9882352941, green: 0.3725490196, blue: 0.3843137255, alpha: 1), logoImage: .shoppingBag2),
                        Category(title: "Swimming", themeColor: #colorLiteral(red: 0.9882352941, green: 0.3725490196, blue: 0.3843137255, alpha: 1), logoImage: .swimming),
                        Category(title: "Fitness", themeColor: #colorLiteral(red: 0.9882352941, green: 0.3725490196, blue: 0.3843137255, alpha: 1), logoImage: .fitness),
                        Category(title: "Drug Stores", themeColor: #colorLiteral(red: 0.9882352941, green: 0.3725490196, blue: 0.3843137255, alpha: 1), logoImage: .drug),
                        Category(title: "Hospitals", themeColor: #colorLiteral(red: 0.9882352941, green: 0.3725490196, blue: 0.3843137255, alpha: 1), logoImage: .hospital),
                        ]
                ),
                Category(
                    title: "Transportation",
                    themeColor: #colorLiteral(red: 0.2274509804, green: 0.5960784314, blue: 0.9882352941, alpha: 1),
                    logoImage: .train,
                    subCategories: [
                        Category(title: "Popular", themeColor: #colorLiteral(red: 0.2274509804, green: 0.5960784314, blue: 0.9882352941, alpha: 1), logoImage: .popular),
                        Category(title: "Transit Stations", themeColor: #colorLiteral(red: 0.2274509804, green: 0.5960784314, blue: 0.9882352941, alpha: 1), logoImage: .train),
                        Category(title: "Bus Stops", themeColor: #colorLiteral(red: 0.2274509804, green: 0.5960784314, blue: 0.9882352941, alpha: 1), logoImage: .bus),
                        Category(title: "Airports", themeColor: #colorLiteral(red: 0.2274509804, green: 0.5960784314, blue: 0.9882352941, alpha: 1), logoImage: .airplane),
                        Category(title: "Auto Services", themeColor: #colorLiteral(red: 0.2274509804, green: 0.5960784314, blue: 0.9882352941, alpha: 1), logoImage: .carServices),
                        Category(title: "Car Rental", themeColor: #colorLiteral(red: 0.2274509804, green: 0.5960784314, blue: 0.9882352941, alpha: 1), logoImage: .carRental),
                        Category(title: "Gas Stations", themeColor: #colorLiteral(red: 0.2274509804, green: 0.5960784314, blue: 0.9882352941, alpha: 1), logoImage: .gasStation),
                        ]
                ),
            ]
        }

        return categories
    }
}
