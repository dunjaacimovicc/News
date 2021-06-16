//
//  NewsInteractor.swift
//  News
//
//  Created by Dunja Acimovic on 30.05.2021..
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class NewsInteractor {
    let newsService = NewsService()
}

// MARK: - Extensions -

extension NewsInteractor: NewsInteractorInterface {
    func getTopStories(completion: @escaping (Result<[Article], Error>) -> Void) {
        newsService.getTopStories(completion: completion)
    }
    
    func getImage(from url: String?, completion: @escaping (Result<Data?, Error>) -> Void) {
        newsService.getImage(from: url, completion: completion)
    }
}
