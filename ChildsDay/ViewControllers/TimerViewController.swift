//
//  ViewController.swift
//  ChildsDay
//
//  Created by Юрий Альт on 18.01.2022.
//

import UIKit

class TimerViewController: UIViewController {

    let button: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .green
        button.setTitle("Hello!", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        return button
    }()

    let buttonTwo: UIButton = {
        let buttonTwo = UIButton(type: .system)
        buttonTwo.backgroundColor = .red
        buttonTwo.setTitle("Baby", for: .normal)
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.layer.cornerRadius = 20
        return buttonTwo
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        view.addSubview(button)
        view.addSubview(buttonTwo)
        setupButton()
        setupButtonTwo()
    }


    func setupButton() {
        button.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    func setupButtonTwo() {
        buttonTwo.leftAnchor.constraint(equalTo: view.rightAnchor, constant: -200).isActive = true
        buttonTwo.topAnchor.constraint(equalTo: button.topAnchor).isActive = true
        buttonTwo.heightAnchor.constraint(equalToConstant: 100).isActive = true
        buttonTwo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true

    }

}

