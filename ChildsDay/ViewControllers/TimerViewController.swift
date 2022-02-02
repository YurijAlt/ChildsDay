//
//  ViewController.swift
//  ChildsDay
//
//  Created by Юрий Альт on 18.01.2022.
//

import UIKit

class TimerViewController: UIViewController {
    
    //MARK: Private Properties
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .green
        button.setTitle("Hello!", for: .normal)
        button.layer.cornerRadius = 20
        return button
    }()
    
    private lazy var buttonTwo: UIButton = {
        let buttonTwo = UIButton(type: .system)
        buttonTwo.backgroundColor = .red
        buttonTwo.setTitle("Baby", for: .normal)
        buttonTwo.layer.cornerRadius = 20
        return buttonTwo
    }()
    
    
    
    
    
    
    
    
    
    
    private lazy var timerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 50)
        label.text = "00:00:00"
        return label
    }()
    
    
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setup(subviews: timerLabel)
        setConstraints()
        
//        let stackView = UIStackView(arrangedSubviews: [button, buttonTwo])
//        stackView.axis = .horizontal
//        stackView.distribution = .fillEqually
//        view.addSubview(stackView)
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            stackView.heightAnchor.constraint(equalToConstant: 200),
//            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            stackView.leftAnchor.constraint(equalTo: view.leftAnchor),
//            stackView.rightAnchor.constraint(equalTo: view.rightAnchor)
//        ])
    }
    
    //MARK: Private Methods
    private func setup(subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        
        
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            timerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 180),
//            timerLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
//            timerLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
//            timerLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            timerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        
        
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            button.leftAnchor.constraint(equalTo: view.leftAnchor),
//            button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3),
//            button.heightAnchor.constraint(equalToConstant: 100),
//            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//        ])
//
//        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            buttonTwo.rightAnchor.constraint(equalTo: view.rightAnchor),
//            buttonTwo.topAnchor.constraint(equalTo: button.topAnchor),
//            buttonTwo.heightAnchor.constraint(equalToConstant: 100),
//            buttonTwo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3)
//        ])
    }
    
}

