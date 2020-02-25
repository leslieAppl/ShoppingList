//
//  DataTemp.swift
//  ShoppingList
//
//  Created by leslie on 2/24/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import Foundation

enum ViewMode {
    
    case Simple
    case Food
}

var currentViewModeValue: ViewMode = .Simple

var indexLetters: [String] = ["#", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

var categories: [String] = ["B", "C", "D", "G", "J", "L", "M", "O", "P", "T", "Y"]

var items1D: [String] = ["Lettuce", "Tomatoes", "Milk", "Granola", "Donuts", "Cookies", "Butter", "Cheese", "Lemonade", "Yogurt", "Oatmeal", "Juice", "Tea", "Coffee", "Bagels", "Brownies", "Potatoes", "Onions"]

var items2D: [[String]] = [["Bagels", "Brownies", "Butter"], ["Cheese", "Coffee", "Cookies"], ["Donuts"], ["Granola"], ["Juice"], ["Lemonade", "Lettuce"], ["Milk"], ["Oatmeal", "Onions"], ["Potatoes"], ["Tea", "Tomatoes"], ["Yogurt"]]

var descriptions: [String] = ["1 lb.", "Sweet tomatoes", "2 lts.", "12 bars", "A dozen", "Oreos", "2", "Lactose free", "2 lts.", "Strawberrie yogurt", "1 box", "Orange juice", "Green tea", "1 bag of beans", "6", "Chocolate brownies", "2 lbs.", "1 lb."]

var images1D: [String] = ["lettuce", "tomato", "milk", "granola", "donuts", "cookies", "butter", "cheese", "lemonade", "yogurt", "oatmeal", "juice", "tea", "coffee", "bagels", "brownies", "potato", "onions"]

var images2D: [String: String] = ["Lettuce": "lettuce", "Tomatoes": "tomato", "Milk": "milk", "Granola": "granola", "Donuts": "donuts", "Cookies": "cookies", "Butter": "butter", "Cheese": "cheese", "Lemonade": "lemonade", "Yogurt": "yogurt", "Oatmeal": "oatmeal", "Juice": "juice", "Tea": "tea", "Coffee": "coffee", "Bagels": "bagels", "Brownies": "brownies", "Potatoes": "potato", "Onions": "onions"]
    
var selected: [Bool] = [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
