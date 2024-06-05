//
//  StarRatingView.swift
//  AMCUI
//
//  Created by Joao Marcus Dionisio Araujo on 02/06/24.
//

import Foundation
import Lottie
import UIKit
public class StarRatingView: CodedView {

    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 5
        return stackView
    }()

    override public func didMoveToWindow() {
        /*
         starAnimationView.contentMode = .scaleAspectFit
         print(starAnimationView.lottieAnimationLayer.activeAnimationName)
         addSubviews([starAnimationView])
         starAnimationView.play(fromFrame: .zero, toFrame: .zero)
         */
        addSubviews([stackView])
        for index in 0..<5 {
            let star = StarView()
            star.delegate = self
            star.setIndex(to: index)
            star.setSize(size: CGSize(width: 35, height: 35))
            stackView.addArrangedSubview(star)
        }
    }

    public override func layoutSubviews() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}

extension StarRatingView: StarViewDelegate {

    public func didTapped(index: Int) {
        for view in stackView.subviews {
            guard let star = view as? StarView else { return }
            if star.getIndex() <= index {
                star.toggle(true)
            } else {
                star.toggle(false)
            }
        }
    }
}
