//
//  TabBarController.swift
//  ChildsDay
//
//  Created by Юрий Альт on 27.01.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let timerViewController = TimerViewController()
        let detailsViewController = DetailsViewController()
        let adviceViewController = AdviceViewController()
        
        //Добавить картинки в Assets, избавиться от Force unwrap.
        viewControllers = [
            generateNavigationController(
                rootViewController: timerViewController,
                title: "Timer",
                image: UIImage(systemName: "circle")!
            ),
            generateNavigationController(
                rootViewController: detailsViewController,
                title: "Details",
                image: UIImage(systemName: "circle")!
            ),
            generateNavigationController(
                rootViewController: adviceViewController,
                title: "Advice",
                image: UIImage(systemName: "circle")!
            )
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
