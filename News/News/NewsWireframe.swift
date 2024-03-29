//
//  NewsWireframe.swift
//  News
//
//  Created by Dunja Acimovic on 30.05.2021..
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import SafariServices

final class NewsWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let storyboard = UIStoryboard(name: "News", bundle: nil)

    // MARK: - Module setup -

    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: NewsViewController.self)
        super.init(viewController: moduleViewController)

        let interactor = NewsInteractor()
        let presenter = NewsPresenter(view: moduleViewController, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension NewsWireframe: NewsWireframeInterface {
    func navigate(to option: NewsNavigationOption) {
        switch option {
        case .article(let url):
            openSafari(with: url)
        }
    }
    
    private func openSafari(with url: String) {
        guard let url = URL(string: url) else { return }
        let safariViewController = SFSafariViewController(url: url)
        navigationController?.present(safariViewController, animated: true, completion: nil)
    }
}
