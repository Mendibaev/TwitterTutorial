//
//  ConversationsController.swift
//  TwitterTutorial
//
//  Created by developer on 08.11.2021.
//

import UIKit

class ConversationsController: UIViewController {

  // MARK: - Properties

  // MARK: - LIfecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

  // MARK: - Helpers
  func configureUI() {
    view.backgroundColor = .white
    navigationItem.title = "Messages"
  }
}
