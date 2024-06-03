//
//  CardView.swift
//  AMCUI
//
//  Created by Joao Marcus Dionisio Araujo on 02/06/24.
//

import Foundation
import UIKit
public class CardView: CodedView {

    private lazy var cardContainer: UIView = {
        let view = UIView()

        return view
    }()

    private lazy var shadowView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.backgroundColor = .black
        return view
    }()

    private lazy var card: UIView = {
        let view = UIButton()
        view.layer.cornerRadius = 8
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 2
        view.backgroundColor = .orange
        return view
    }()

    override public func didMoveToSuperview() {
        addSubviews([cardContainer])
        cardContainer.addSubviews([shadowView, card])
    }

    public override func layoutSubviews() {
        NSLayoutConstraint.activate([
            cardContainer.topAnchor.constraint(equalTo: topAnchor),
            cardContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            cardContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            cardContainer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            shadowView.topAnchor.constraint(equalTo: cardContainer.topAnchor),
            shadowView.bottomAnchor.constraint(equalTo: cardContainer.bottomAnchor),
            shadowView.leadingAnchor.constraint(equalTo: cardContainer.leadingAnchor),
            shadowView.trailingAnchor.constraint(equalTo: cardContainer.trailingAnchor),

            card.topAnchor.constraint(equalTo: cardContainer.topAnchor, constant: -2),
            card.bottomAnchor.constraint(equalTo: cardContainer.bottomAnchor, constant: -4),
            card.leadingAnchor.constraint(equalTo: cardContainer.leadingAnchor, constant: -2),
            card.trailingAnchor.constraint(equalTo: cardContainer.trailingAnchor, constant: -4),
        ])
    }
}
