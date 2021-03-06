//
//  MainTabController.swift
//  TwitterTutorial
//
//  Created by developer on 08.11.2021.
//

import UIKit

class MainTabController: UITabBarController {

  // MARK: - Properties

  let actionButton: UIButton = {
    let button = UIButton(type: .system)
    button.tintColor = .white
    button.backgroundColor = .twitterBlue
    button.setImage(UIImage(named: "new_tweet"), for: .normal)
    button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
    return button
  }()

  // MARK: - LIfecycle

  override func viewDidLoad() {
    super.viewDidLoad()

    configureViewControllers()
    configureUI()
  }

  // MARK: - Selectors

  @objc func actionButtonTapped() {
    print(123)
  }

  // MARK: - Helpers

  func configureUI() {
    view.addSubview(actionButton)
    actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
    actionButton.layer.cornerRadius = 56/2
//    actionButton.translatesAutoresizingMaskIntoConstraints = false
//    actionButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
//    actionButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
//    actionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64).isActive = true
//    actionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
//    actionButton.layer.cornerRadius = 56/2
  }

  func configureViewControllers() {

    let feed = FeedController()
    let nav1 = templateNavigationControl(image: UIImage(named: "home_unselected"), rootViewController: feed)

    let explore = ExploreController()
    let nav2 = templateNavigationControl(image: UIImage(named: "search_unselected"), rootViewController: explore)

    let notifications = NotificationsController()
    let nav3 = templateNavigationControl(image: UIImage(named: "like_unselected"),  rootViewController: notifications)

    let conversations = ConversationsController()
    let nav4 = templateNavigationControl(image: UIImage(named: "ic_mail_outline_white_2x-1"), rootViewController: conversations)

    viewControllers = [nav1, nav2, nav3, nav4]
  }

  func templateNavigationControl(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
    let nav = UINavigationController(rootViewController: rootViewController)
    nav.tabBarItem.image = image
    nav.navigationBar.barTintColor = .white
    return nav
  }
}

