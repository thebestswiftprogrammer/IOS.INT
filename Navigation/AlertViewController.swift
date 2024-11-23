//AlertController.swift
//  Navigation
//
//  Created by Виктория Вайнштейн on 03.09.2024.
//
import UIKit

struct Alert{
    let title: String
}

class AlertController: UIAlertController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .purple
    }
}
