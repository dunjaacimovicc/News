//
//  NewsInterfaces.swift
//  News
//
//  Created by Dunja Acimovic on 30.05.2021..
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum NewsNavigationOption {
    case article(String)
}

protocol NewsWireframeInterface: WireframeInterface {
    func navigate(to: NewsNavigationOption)
}

protocol NewsViewInterface: ViewInterface {
    func reloadData()
}

protocol NewsPresenterInterface: PresenterInterface {
    func viewDidLoad()
    func numberOfItems() -> Int
    func item(at indexPath: IndexPath) -> NewsTableViewCellItem
    func didSelectItem(at indexPath: IndexPath)
}

protocol NewsInteractorInterface: InteractorInterface {
    func getTopStories(completion: @escaping (Result<[Article], Error>) -> Void)
}
