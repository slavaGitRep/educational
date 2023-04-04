//
//  FollowerListViewController.swift
//  GHFollowers
//
//  Created by viacheslav on 28.03.2023.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { (followers, errorMessage) in
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(title: "Bad stuff happend", message: errorMessage!, buttonTitle: "Ok")
                return
            }
            print("Followers.count = \(followers.count)")
            print(followers)
        }
        
    } 

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
