//
//  TabBarController.swift
//  ChildsDay
//
//  Created by Юрий Альт on 27.01.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let timerViewController = TimerViewController()
        let detailsViewController = DetailsViewController()
        let adviceViewController = AdviceViewController()
        
        viewControllers = [
            generateNavigationController(
                rootViewController: timerViewController,
                image: #imageLiteral(resourceName: "timer"),
                title: "Timer"
            ),
            generateNavigationController(
                rootViewController: detailsViewController,
                image: #imageLiteral(resourceName: "details"),
                title: "Details"
            ),
            generateNavigationController(
                rootViewController: adviceViewController,
                image: #imageLiteral(resourceName: "advice"),
                title: "Advice"
            )
        ]
        
        setupTabBar()
    
    }
    //MARK: Private Methods
    private func generateNavigationController(rootViewController: UIViewController, image: UIImage, title: String) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.image = image
        navigationVC.navigationBar.topItem?.title = title
        navigationVC.navigationBar.prefersLargeTitles = true
        return navigationVC
    }
    //Настройка внешнего вида UITabBar
    private func setupTabBar() {
        tabBar.tintColor = #colorLiteral(red: 0.9803488851, green: 0.8623965979, blue: 0, alpha: 1)
        tabBar.barTintColor = .red
    }
}
