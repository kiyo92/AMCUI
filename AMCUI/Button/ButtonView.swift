//
//  ButtonView.swift
//  AMCUI
//
//  Created by Joao Marcus Dionisio Araujo on 02/06/24.
//

import Foundation
import UIKit
public class ButtonView: CodedView {

    private lazy var buttonContainer: UIView = {
        let view = UIView()

        return view
    }()

    private lazy var shadowView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.backgroundColor = .black
        return view
    }()

    private lazy var button: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 8
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2
        button.backgroundColor = .primaryColor
        return button
    }()

    override public func didMoveToSuperview() {
        addSubviews([buttonContainer])
        buttonContainer.addSubviews([shadowView, button])
    }

    public override func layoutSubviews() {
        NSLayoutConstraint.activate([
            buttonContainer.topAnchor.constraint(equalTo: topAnchor),
            buttonContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            buttonContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            buttonContainer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            shadowView.topAnchor.constraint(equalTo: buttonContainer.topAnchor),
            shadowView.bottomAnchor.constraint(equalTo: buttonContainer.bottomAnchor),
            shadowView.leadingAnchor.constraint(equalTo: buttonContainer.leadingAnchor),
            shadowView.trailingAnchor.constraint(equalTo: buttonContainer.trailingAnchor),

            button.topAnchor.constraint(equalTo: buttonContainer.topAnchor, constant: -2),
            button.bottomAnchor.constraint(equalTo: buttonContainer.bottomAnchor, constant: -4),
            button.leadingAnchor.constraint(equalTo: buttonContainer.leadingAnchor, constant: -2),
            button.trailingAnchor.constraint(equalTo: buttonContainer.trailingAnchor, constant: -4),
        ])
    }
}
