//
//  ViewController.swift
//  ChildsDay
//
//  Created by Юрий Альт on 18.01.2022.
//

import UIKit

class TimerViewController: UIViewController {
    
    //MARK: - Private Properties
    //Лэйбл с таймером/секундомером
    private lazy var timerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 50)
        label.text = "00:00:00"
        return label
    }()
    //Первый ряд круглых кнопок
    private lazy var sleepButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "sleep"), for: .normal)
        button.layer.masksToBounds = false
        return button
    }()
    private lazy var eatButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "eat"), for: .normal)
        return button
    }()
    private lazy var activityButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "activity"), for: .normal)
        return button
    }()
    
    //Второй ряд круглых кнопок
    private lazy var sleepButton1: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "sleep"), for: .normal)
        return button
    }()
    private lazy var eatButton1: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "eat"), for: .normal)
        return button
    }()
    private lazy var activityButton1: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "activity"), for: .normal)
        return button
    }()
    
    
    //Первый горизонтальный StackView
    private lazy var firstHorizontalStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [sleepButton, eatButton, activityButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 40
        return stackView
    }()
    //Второй горизонтальный StackView
    private lazy var secondHorizontalStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [sleepButton1, eatButton1, activityButton1])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 40
        return stackView
    }()
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        setup(subviews: timerLabel, firstHorizontalStackView, secondHorizontalStackView)
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
        //Настройка лэйбла
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            timerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 180),
            timerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        //Настройка StackView 1
        firstHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstHorizontalStackView.topAnchor.constraint(equalTo: timerLabel.bottomAnchor, constant: 60),
            firstHorizontalStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        //Настройка StackView 2
        secondHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondHorizontalStackView.topAnchor.constraint(equalTo: firstHorizontalStackView.bottomAnchor, constant: 40),
            secondHorizontalStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}

