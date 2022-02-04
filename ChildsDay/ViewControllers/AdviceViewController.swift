//
//  AdviceViewController.swift
//  ChildsDay
//
//  Created by Юрий Альт on 01.02.2022.
//

import UIKit

class AdviceViewController: UIViewController {
    
    //MARK: - Private Properties
    //Первый ряд мапеньких круглых кнопок
    private lazy var sleepButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "sleepTouched"), for: .normal)
        button.layer.masksToBounds = false
        return button
    }()
    private lazy var eatButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "sleepTouched"), for: .normal)
        return button
    }()
    private lazy var activityButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "sleepTouched"), for: .normal)
        return button
    }()
    
    private lazy var sleepButton1: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "sleepTouched"), for: .normal)
        button.layer.masksToBounds = false
        return button
    }()
    private lazy var eatButton2: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "sleepTouched"), for: .normal)
        return button
    }()
    private lazy var activityButton3: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "sleepTouched"), for: .normal)
        return button
    }()
    
    //Горизонтальный StackView
    private lazy var firstHorizontalStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [sleepButton, eatButton, activityButton, sleepButton1, eatButton2, activityButton3])
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 15
        return stackView
    }()
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup(subviews: firstHorizontalStackView)
        setConstraints()
    }

    
    //MARK: - Private Methods
    private func setup(subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    //Constraints for viewElement
    private func setConstraints() {
        //Настройка StackView 1
        firstHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstHorizontalStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 180),
            firstHorizontalStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
